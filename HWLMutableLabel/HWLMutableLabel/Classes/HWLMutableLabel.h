//
//  HWLMutableLabel.h
//  HWLMutableLabel
//
//  Created by jipengfei on 2019/9/9.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HWLMutableLabel : UILabel
@property (nonatomic, strong) NSString *mutableLabelText;
@property (nonatomic, assign) UIEdgeInsets edgeInsets;
@property (nonatomic, assign) CGFloat lineSpace;
@end

NS_ASSUME_NONNULL_END
