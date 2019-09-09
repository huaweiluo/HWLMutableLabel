//
//  ViewController.m
//  HWLMutableLabel
//
//  Created by jipengfei on 2019/9/9.
//  Copyright © 2019 jipengfei. All rights reserved.
//

#import "ViewController.h"
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
    self.hwlMutableLabel.frame = CGRectMake(20.f, self.view, <#CGFloat width#>, <#CGFloat height#>)
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
