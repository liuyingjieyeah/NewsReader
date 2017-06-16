//
//  YJToolClass.m
//  SqliteTest
//
//  Created by liuyingjie on 2017/3/6.
//  Copyright © 2017年 TaiShanXianHuo. All rights reserved.
//

#define __Path_Document__ [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject]


#import "YJToolClass.h"

static YJToolClass *_toolClass;

@implementation YJToolClass


+ (YJToolClass *)createToolClass;
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _toolClass = [[self alloc] init];
    });
    return _toolClass;
}

//金额逗号分隔格式
+(NSString *)countNumAndChangeformat:(NSString *)num
{
    int count = 0;
    long long int a = num.longLongValue;
    while (a != 0)
    {
        count++;
        a /= 10;
    }
    NSMutableString *string = [NSMutableString stringWithString:num];
    NSMutableString *newstring = [NSMutableString string];
    while (count > 3) {
        count -= 3;
        NSRange rang = NSMakeRange(string.length - 3, 3);
        NSString *str = [string substringWithRange:rang];
        [newstring insertString:str atIndex:0];
        [newstring insertString:@"," atIndex:0];
        [string deleteCharactersInRange:rang];
    }
    [newstring insertString:string atIndex:0];
    return newstring;
}

- (CGSize)sizeWithString:(NSString *)content andFont:(UIFont *)font andMaxWidth:(CGFloat)maxW andMaxHeight:(CGFloat)maxH
{
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc]init];
    paragraphStyle.lineBreakMode = NSLineBreakByWordWrapping;
    NSDictionary *attributes = @{NSFontAttributeName:font, NSParagraphStyleAttributeName:paragraphStyle.copy};
    
    CGSize size;
    
    
     size = [content boundingRectWithSize:CGSizeMake(maxW, maxH) options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil].size;
    
    
    /*
    if ([[[UIDevice currentDevice] systemVersion]floatValue] >= 7.0) {
        size = [content boundingRectWithSize:CGSizeMake(maxW, maxH) options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil].size;
    }else{
        size = [content sizeWithFont:font constrainedToSize:CGSizeMake(maxW, maxH) lineBreakMode:paragraphStyle.lineBreakMode];// iOS6有效
    }
    */
    return size;
}



+(void)saveUserDefaultWithObject:(NSString *)obj andKey:(NSString *)key{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:obj forKey:key];
    [userDefaults synchronize];
}

+(NSString *)getUserDefaultWithObject:(NSString *)obj{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    return [userDefaults valueForKey:obj];
}

+(void)removeUserDefauletWithObject:(NSString *)obj{
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults removeObjectForKey:obj];
    [userDefaults synchronize];
}


//正则网路标签去除

+(NSString *)getZZwithString:(NSString *)string{
    
    NSRegularExpression *regularExpretion=[NSRegularExpression regularExpressionWithPattern:@"<[^>]*>|\n" options:0 error:nil];
    string=[regularExpretion stringByReplacingMatchesInString:string options:NSMatchingReportProgress range:NSMakeRange(0, string.length) withTemplate:@""
            ];
    
    return string;
}



//密码判断
+ (BOOL) validatePassword:(NSString *)passWord
{
    NSString *passWordRegex = @"^[a-zA-Z0-9]{6,20}+$";
    
    NSPredicate *passWordPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",passWordRegex];
    
    return [passWordPredicate evaluateWithObject:passWord];
}

//验证手机号
+ (BOOL)isMobileNumber:(NSString *)mobileNum {
    //    电信号段:133/153/180/181/189/177
    //    联通号段:130/131/132/155/156/185/186/145/176
    //    移动号段:134/135/136/137/138/139/150/151/152/157/158/159/182/183/184/187/188/147/178
    //    虚拟运营商:170
    
    NSString *MOBILE = @"^1(3[0-9]|4[57]|5[0-35-9]|8[0-9]|7[06-8])\\d{8}$";
    NSPredicate *regextestmobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", MOBILE];
    return [regextestmobile evaluateWithObject:mobileNum];
}



//计算字符串应该占有的大小
+ (CGSize)sizeWithString:(NSString *)string andFont:(UIFont *)font
{
    CGSize size = [string sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:font,NSFontAttributeName, nil]];
    return size;
}

//计算文本内容占有的大小
+ (CGRect)rectWithString:(NSString *)string andFont:(UIFont *)font andWidth:(CGFloat)width
{
    CGRect rect = [string boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:[NSDictionary dictionaryWithObjectsAndKeys:font,NSFontAttributeName, nil] context:nil];
    return rect;
}


+(BOOL)archiveFileWithObject:(id)objc andFileName:(NSString *)fileName
{
    NSMutableData *mutableData = [NSMutableData data];
    NSKeyedArchiver *archive = [[NSKeyedArchiver alloc]initForWritingWithMutableData:mutableData];
    [archive encodeObject:objc forKey:@"starArchive"];
    [archive finishEncoding];
    return [mutableData writeToFile:[__Path_Document__ stringByAppendingPathComponent:fileName] atomically:YES];
}

+(id)unArchiveWithFile:(NSString *)fileName
{
    NSString *path = [__Path_Document__ stringByAppendingPathComponent:fileName];
    NSData *data = [NSData dataWithContentsOfFile:path];
    NSKeyedUnarchiver *unArchive = [[NSKeyedUnarchiver alloc]initForReadingWithData:data];
    id objc = [unArchive decodeObjectForKey:@"starArchive"];
    [unArchive finishDecoding];
    return objc;
}


@end
