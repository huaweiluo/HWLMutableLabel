//
//  ViewController.m
//  HWLMutableLabel
//
//  Created by jipengfei on 2019/9/9.
//  Copyright © 2019 jipengfei. All rights reserved.
//

#import "ViewController.h"
#import <YYCategories/UIView+YYAdd.h>
#import "HWLMutableLabel.h"

@interface ViewController ()
@property (nonatomic, strong) HWLMutableLabel *hwlMutableLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor darkGrayColor];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    self.hwlMutableLabel.frame = CGRectMake(20.f, 160.f, (self.view.width-20.f*2), self.hwlMutableLabel.height);
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    self.hwlMutableLabel.mutableLabelText = @"抖擞我金佛山讲法律司机反馈谁了解风口浪尖拉三等奖发顺丰吉林省看点风景";
}
#pragma mark -
#pragma mark property method
- (HWLMutableLabel*)hwlMutableLabel {
    if (!_hwlMutableLabel) {
        _hwlMutableLabel = [[HWLMutableLabel alloc] init];
        [self.view addSubview:_hwlMutableLabel];
    }
    
    return _hwlMutableLabel;
}

@end
