//
//  AdvertInfo.m
//  NewsReader
//
//  Created by liuyingjie on 2017/6/15.
//  Copyright © 2017年 liuyingjieyeah. All rights reserved.
//

#import "AdvertInfo.h"

@implementation AdvertInfo

+ (instancetype)infoFromDict:(NSDictionary *)dict
{
    AdvertInfo *info = [[AdvertInfo alloc] init];
    
    info.ID = [dict objectForKey:@"id"];
    info.name = [dict objectForKey:@"name"];
    info.image = [dict objectForKey:@"imageurl"];
    info.selectImage = [dict objectForKey:@"linkurl"];
    return info;
}


@end
