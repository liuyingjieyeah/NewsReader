//
//  BaseInfo.m
//  NewsReader
//
//  Created by liuyingjie on 2017/6/15.
//  Copyright © 2017年 liuyingjieyeah. All rights reserved.
//

#import "BaseInfo.h"

@implementation BaseInfo

+ (instancetype)infoFromDict:(NSDictionary *)dict
{
    BaseInfo *info = [[BaseInfo alloc] init];
    
    info.ID = [dict objectForKey:@"id"];
    info.name = [dict objectForKey:@"name"];
    
    return info;
}

+ (NSArray *)arrayFromDict:(NSDictionary *)dict
{
    NSArray *array = [dict objectForKey:NetData];
    return [[self class] arrayFromArray:array];
}

+ (NSArray *)arrayFromArray:(NSArray *)array
{
    NSMutableArray *infos = [[NSMutableArray alloc] init];
    
    for (NSDictionary *dict in array) {
        [infos addObject:[[self class] infoFromDict:dict]];
    }
    
    if (infos.count <= 0) {
        infos = nil;
    }
    
    return infos;
}

//排序,这里按照ID排序
- (NSComparisonResult)compare:(BaseInfo *)bInfo
{
    return [self.ID caseInsensitiveCompare:bInfo.ID];
}

//判断是否相等
- (BOOL)isEqual:(BaseInfo *)bInfo
{
    return [self.ID isEqualToString:bInfo.ID];
}

@end
