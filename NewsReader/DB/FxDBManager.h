//
//  FxDBManager.h
//  NewsReader
//
//  Created by liuyingjie on 2017/6/16.
//  Copyright © 2017年 liuyingjieyeah. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NewsInfo.h"
#import "ColumnInfo.h"

@interface FxDBManager : NSObject

+ (void)saveColumns:(NSDictionary *)dictInfo;
+ (NSArray *)fetchColumns:(NSString *)pageID;

+ (void)saveNews:(NSDictionary *)dictInfo;
+ (NSArray *)fetchNews:(NSString *)columnID;

@end
