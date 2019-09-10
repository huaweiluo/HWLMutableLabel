//
//  HWLMutableLabel.m
//  HWLMutableLabel
//
//  Created by jipengfei on 2019/9/9.
//

#import "HWLMutableLabel.h"
#import "UILabel+NSAttributedString.h"
#import <YYCategories/UIView+YYAdd.h>

@interface HWLMutableLabel()
@end

@implementation HWLMutableLabel

- (id)init {
    self = [super init];
    if (self) {
        self.numberOfLines = 0;
        self.edgeInsets = UIEdgeInsetsZero;
    }
    
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
}

#pragma mark -
#pragma mark property method
- (void)setMutableLabelText:(NSString *)mutableLabelText {
    _mutableLabelText = mutableLabelText;
    
    [self setLineSpace:self.lineSpace withText:mutableLabelText];
    [self sizeToFit];
}

#pragma mark -
#pragma mark overWrite
- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines {
    UIEdgeInsets insets = self.edgeInsets;
    CGRect rect = [super textRectForBounds:UIEdgeInsetsInsetRect(bounds, insets)
                    limitedToNumberOfLines:numberOfLines];
    
    rect.origin.x    -= insets.left;
    rect.origin.y    -= insets.top;
    rect.size.width  += (insets.left + insets.right);
    rect.size.height += (insets.top + insets.bottom);
    
    return rect;
}

- (void)drawTextInRect:(CGRect)rect {
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, self.edgeInsets)];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
