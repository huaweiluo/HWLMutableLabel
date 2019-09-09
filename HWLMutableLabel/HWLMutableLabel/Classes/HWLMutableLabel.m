//
//  HWLMutableLabel.m
//  HWLMutableLabel
//
//  Created by jipengfei on 2019/9/9.
//

#import "HWLMutableLabel.h"
#import "UILabel+NSAttributedString.h"

@interface HWLMutableLabel()
@end

@implementation HWLMutableLabel

- (id)init {
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor darkGrayColor];
        self.textColor = [UIColor yellowColor];
        self.font = [UIFont systemFontOfSize:38.f/2];
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
    
    [self setLineSpace:18.f/2 withText:mutableLabelText];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
