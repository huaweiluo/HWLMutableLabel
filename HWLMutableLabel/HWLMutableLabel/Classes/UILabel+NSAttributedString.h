//
//  UILabel+NSAttributedString.h
//  DMKDrivingNaviFlow
//
//  Created by jipengfei on 2019/9/3.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel(NSAttributedString)

/**
 设置固定行间距文本
 
 @param lineSpace 行间距
 @param text 文本内容
 */
- (void)setLineSpace:(CGFloat)lineSpace withText:(NSString *)text;

@end

NS_ASSUME_NONNULL_END
