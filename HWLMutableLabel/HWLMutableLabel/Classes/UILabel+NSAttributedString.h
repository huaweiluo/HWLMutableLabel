//
//  UILabel+NSAttributedString.h
//  DMKDrivingNaviFlow
//
//  Created by jipengfei on 2019/9/3.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel(NSAttributedString)
- (void)setLineSpace:(CGFloat)lineSpace withText:(NSString *)text;
- (CGFloat)getSpaceLabelHeight:(NSString *)str withAttrDict:(NSDictionary *)dict withWidth:(CGFloat)width;
@end

NS_ASSUME_NONNULL_END
