//
//  BaseWidget.m
//  NewsReader
//
//  Created by liuyingjie on 2017/6/16.
//  Copyright © 2017年 liuyingjieyeah. All rights reserved.
//

#import "BaseWidget.h"

@interface BaseWidget ()

@end

@implementation BaseWidget

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self reloadData];
}

- (void)updateUI
{
    
}

- (void)reloadData
{
    if (![self isReloadLocalData]) {
        [self requestServer];
    }
    else {
        [self requestServerOp];
        [self updateUI];
    }
}

- (BOOL)isReloadLocalData
{
    BOOL isReload = self.listData.count > 0;
    
    if (isReload) {
        [self updateUI];
    }
    
    return isReload;
}

- (void)requestServer
{
    [self showIndicator:LoadingTip autoHide:NO afterDelay:NO];
    [self requestServerOp];
}

- (void)requestServerOp
{
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}




@end
