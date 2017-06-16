//
//  YJToolClass.h
//  SqliteTest
//
//  Created by liuyingjie on 2017/3/6.
//  Copyright © 2017年 TaiShanXianHuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface YJToolClass : NSObject


+ (YJToolClass *)createToolClass;

/**
 *  计算文本尺寸
 */
- (CGSize)sizeWithString:(NSString *)content andFont:(UIFont *)font andMaxWidth:(CGFloat)maxW andMaxHeight:(CGFloat)maxH;

+(NSString *)countNumAndChangeformat:(NSString *)num;

//计算字符串应该占有的大小
+ (CGSize)sizeWithString:(NSString *)string andFont:(UIFont *)font;

//计算文本内容占有的大小
+ (CGRect)rectWithString:(NSString *)string andFont:(UIFont *)font andWidth:(CGFloat)width;

//正则去除网络标签
+(NSString *)getZZwithString:(NSString *)string;

//保存用户信息到本地
+(void)saveUserDefaultWithObject:(NSString *)obj andKey:(NSString *)key;
//获取用户信息
+(NSString *)getUserDefaultWithObject:(NSString *)obj;
//移除用户信息
+(void)removeUserDefauletWithObject:(NSString *)obj;



//密码判断
+ (BOOL) validatePassword:(NSString *)passWord;
//验证手机号
+ (BOOL)isMobileNumber:(NSString *)mobileNum;


/**
 *  归档文件
 *
 *  @param objc     将要归档的对象
 *  @param fileName 归档成功之后的文件名
 *
 *  @return 归档 成功/失败
 */
+(BOOL)archiveFileWithObject:(id)objc andFileName:(NSString *)fileName;

/**
 *  解归档
 *
 *  @param fileName 文件名
 *
 *  @return 文件中的数据
 */
+(id)unArchiveWithFile:(NSString *)fileName;


@end
