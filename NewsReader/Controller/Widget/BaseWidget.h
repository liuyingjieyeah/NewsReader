//
//  BaseWidget.h
//  NewsReader
//
//  Created by liuyingjie on 2017/6/16.
//  Copyright © 2017年 liuyingjieyeah. All rights reserved.
//


#import "FxBaseController.h"

@interface BaseWidget : FxBaseController

@property(strong, nonatomic) NSMutableArray    *listData;

- (void)updateUI;
- (void)reloadData;
- (BOOL)isReloadLocalData;

@end
