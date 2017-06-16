//
//  FxDBManager+Private.h
//  NewsReader
//
//  Created by liuyingjie on 2017/6/16.
//  Copyright © 2017年 liuyingjieyeah. All rights reserved.
//

#import "FxDBManager.h"

@interface FxDBManager (Private)

// 将内容存储到指定数据库的表中
/*
 *content：要存储的内容
 *primaryKey：表主键,不能为nil
 *otherFields:表字段名称，不包含主键,统一为TEXT数据类型
 *tableName：表名称
 *dbFile：数据库文件，路径+文件名
 */
+ (void)save:(NSDictionary *)dictContent
  primaryKey:(NSString *)primaryKey
     inTable:(NSString *)tableName
    inDBFile:(NSString *)dbFile;

// condition格式为：{Key:Value}
+ (NSMutableArray *)fetchWithCondition:(NSDictionary *)dictCondition
                             forFields:(NSArray *)fields
                               inTable:(NSString *)tableName
                              inDBFile:(NSString *)dbFile;

// 删除表内容
+ (void)deleteWithCondition:(NSDictionary *)dictCondition
                    inTable:(NSString *)tableName
                   inDBFile:(NSString *)dbFile;

@end
