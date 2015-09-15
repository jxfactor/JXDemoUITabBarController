//
//  AppDelegate.m
//  JXDemoUITabBarController
//
//  Created by 汪骏祥 on 9/15/15.
//  Copyright (c) 2015 junxiang. All rights reserved.
//

#import "AppDelegate.h"
#import "JXTBC.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //获取主屏幕
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    //实例化自定义的JXTBC类
    JXTBC *jxTBC = [[JXTBC alloc] init];
    jxTBC.view.backgroundColor = [UIColor redColor];
    
    //设定程序的根视图控制器，并显示
    self.window.rootViewController = jxTBC;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
