//
//  JXTBC.m
//  JXDemoUITabBarController
//
//  Created by 汪骏祥 on 9/15/15.
//  Copyright (c) 2015 junxiang. All rights reserved.
//

#import "JXTBC.h"

#import "JXOneVC.h"
#import "JXTwoVC.h"
#import "JXThreeVC.h"
#import "JXFourVC.h"

@interface JXTBC ()

@end

@implementation JXTBC

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setupAllVC];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


/** 设置标签控制器里的四个标签页视图控制器 **/
- (void)setupAllVC {
    //实例化视图控制器
    JXOneVC *jxOneVC = [[JXOneVC alloc] init];
    //设定视图控制器
    [self setupChildVC:jxOneVC withTitle:@"饮食" withColor:[UIColor blueColor]];
    
    JXTwoVC *jxTwoVC = [[JXTwoVC alloc] init];
    [self setupChildVC:jxTwoVC withTitle:@"运动" withColor:[UIColor brownColor]];
    
    JXThreeVC *jxThreeVC = [[JXThreeVC alloc] init];
    [self setupChildVC:jxThreeVC withTitle:@"睡眠" withColor:[UIColor purpleColor]];
    
    JXFourVC *jxFourVC = [[JXFourVC alloc] init];
    [self setupChildVC:jxFourVC withTitle:@"体重" withColor:[UIColor greenColor]];
}

/** 设置标签页控制器的基本属性，导航栏，同时加入到标签页控制器 **/
- (void)setupChildVC: (UIViewController* )vc withTitle: (NSString* )title withColor: (UIColor *) bgColor{
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:vc];
    navi.title = title;
    
    vc.navigationItem.title =  [@"我的" stringByAppendingString:title];
    vc.view.backgroundColor = bgColor;
    
    [self addChildViewController:navi];
}


@end
