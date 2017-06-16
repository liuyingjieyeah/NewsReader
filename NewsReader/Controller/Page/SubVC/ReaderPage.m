//
//  ReaderPage.m
//  NewsReader
//
//  Created by liuyingjie on 2017/6/15.
//  Copyright © 2017年 liuyingjieyeah. All rights reserved.
//

#import "ReaderPage.h"

@interface ReaderPage ()

@end

@implementation ReaderPage

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];

    [self setNavigationLeft:@"NavigationBell@2x" sel:nil];
    [self setNavigationRight:@"NavigationSquare.png"];
    
    [self setNavigationTitleImage:@"NavBarIcon@2x"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}



@end
