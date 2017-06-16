//
//  FxGetColumn.m
//  NewsReader
//
//  Created by liuyingjie on 2017/6/16.
//  Copyright © 2017年 liuyingjieyeah. All rights reserved.
//

#import "FxGetColumn.h"
#import "ColumnInfo.h"
#import "FxDBManager.h"

@implementation FxGetColumn

- (void)parseSuccess:(NSDictionary *)dict jsonString:jsonString
{
    //获取
    NSArray *infos = [ColumnInfo arrayFromDict:dict];
    [_delegate opSuccess:infos];
    
    //保存到本地
    NSString *pageId = [_opInfo objectForKey:@"body"];
    [FxDBManager saveColumns:@{@"pageid":pageId, @"json":jsonString}];
}

@end
