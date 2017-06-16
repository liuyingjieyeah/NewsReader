//
//  AppDelegate.m
//  NewsReader
//
//  Created by liuyingjie on 2017/6/14.
//  Copyright © 2017年 liuyingjieyeah. All rights reserved.
//

#import "AppDelegate.h"
#import "LogInPage.h"
#import "HomePage.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    [self showHomePage];

    [self.window makeKeyAndVisible];
    
    
    
    return YES;
}

- (void)showHomePage{
    HomePage *homePage = [[HomePage alloc]init];
    self.window.rootViewController = homePage;
    
//    LogInPage *logV = [[LogInPage alloc]init];
//    UINavigationController *NavC = [[UINavigationController alloc]initWithRootViewController:logV];
}


- (void)applicationWillResignActive:(UIApplication *)application {}


- (void)applicationDidEnterBackground:(UIApplication *)application {}


- (void)applicationWillEnterForeground:(UIApplication *)application {}


- (void)applicationDidBecomeActive:(UIApplication *)application {}


- (void)applicationWillTerminate:(UIApplication *)application {}


@end
