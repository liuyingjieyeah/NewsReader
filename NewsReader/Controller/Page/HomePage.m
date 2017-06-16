//
//  ViewController.m
//  NewsReader
//
//  Created by liuyingjie on 2017/6/14.
//  Copyright © 2017年 liuyingjieyeah. All rights reserved.
//

#import "HomePage.h"

#import "PageInfo.h"


#import "NewsPage.h"
#import "ReaderPage.h"
#import "VoicePage.h"
#import "DiscoveryPage.h"
#import "MyPage.h"


@interface HomePage ()

@end

@implementation HomePage

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self addTabControllers];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

//添加控制器
- (void)addTabControllers{

    self.tabBar.tintColor = [UIColor redColor];
    
    self.viewControllers = [PageInfo pageControllers];
    
    /*
    //方法二：
    FxBaseController *page = nil;
    UINavigationController *navPage = nil;
    
    page = [[NewsPage alloc]init];
    page.title = @"新闻";
    page.tabBarItem.image = [UIImage imageNamed:@"NewsIcon.png"];
    navPage = [[UINavigationController alloc]initWithRootViewController:page];
    [self addChildViewController:navPage];

    page = [[ReaderPage alloc]init];
    page.title = @"阅读";
    page.tabBarItem.image = [UIImage imageNamed:@"ReaderIcon.png"];
    navPage = [[UINavigationController alloc]initWithRootViewController:page];
    [self addChildViewController:navPage];

    page = [[VoicePage alloc]init];
    page.title = @"视听";
    page.tabBarItem.image = [UIImage imageNamed:@"VoiceIcon.png"];
    navPage = [[UINavigationController alloc]initWithRootViewController:page];
    [self addChildViewController:navPage];

    page = [[DiscoveryPage alloc]init];
    page.title = @"发现";
    page.tabBarItem.image = [UIImage imageNamed:@"DiscoveryIcon.png"];
    navPage = [[UINavigationController alloc]initWithRootViewController:page];
    [self addChildViewController:navPage];

    page = [[MyPage alloc]init];
    page.title = @"我";
    page.tabBarItem.image = [UIImage imageNamed:@"MyIcon.png"];
    navPage = [[UINavigationController alloc]initWithRootViewController:page];
    [self addChildViewController:navPage];
    */
    
    /*
    //方法三
    NewsPage *newsV = [[NewsPage alloc]init];
    UINavigationController *newsNavC = [[UINavigationController alloc]initWithRootViewController:newsV];
    ReaderPage *readV = [[ReaderPage alloc]init];
    UINavigationController *readNavC = [[UINavigationController alloc]initWithRootViewController:readV];
    VoicePage *voiceV = [[VoicePage alloc]init];
    UINavigationController *voiceNavC = [[UINavigationController alloc]initWithRootViewController:voiceV];
    DiscoveryPage *discoveryV = [[DiscoveryPage alloc]init];
    UINavigationController *discoveryNavC = [[UINavigationController alloc]initWithRootViewController:discoveryV];
    MyPage *myV = [[MyPage alloc]init];
    UINavigationController *myNavC = [[UINavigationController alloc]initWithRootViewController:myV];
    */
}

















@end
