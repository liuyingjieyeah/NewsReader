//
//  BaseInfo.h
//  NewsReader
//
//  Created by liuyingjie on 2017/6/15.
//  Copyright © 2017年 liuyingjieyeah. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseInfo : NSObject

@property (nonatomic, strong) NSString *ID;
@property (nonatomic, strong) NSString *name;

+ (instancetype)infoFromDict:(NSDictionary *)dict;
+ (NSArray *)arrayFromDict:(NSDictionary *)dict;
+ (NSArray *)arrayFromArray:(NSArray *)array;

    
@end
