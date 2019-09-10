//
//  UILabel+NSAttributedString.m
//  DMKDrivingNaviFlow
//
//  Created by jipengfei on 2019/9/3.
//

#import "UILabel+NSAttributedString.h"

@implementation UILabel(NSAttributedString)

/**
 设置固定行间距文本
 
 @param lineSpace 行间距
 @param text 文本内容
 */
- (void)setLineSpace:(CGFloat)lineSpace withText:(NSString *)text {
    if (!text) {
        return;
    }
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineSpacing = lineSpace;  //设置行间距
    paragraphStyle.lineBreakMode = self.lineBreakMode;
    paragraphStyle.alignment = self.textAlignment;
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:text];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [text length])];
    self.attributedText = attributedString;
}

- (CGFloat)getSpaceLabelHeight:(NSString *)str withAttrDict:(NSDictionary *)dict withWidth:(CGFloat)width {
    
    CGSize size = [str boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil].size;
    
    return size.height;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
