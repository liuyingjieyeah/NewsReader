//
//  FxOperation.h
//  NewsReader
//
//  Created by liuyingjie on 2017/6/16.
//  Copyright © 2017年 liuyingjieyeah. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol FxOperationDelegate;


@interface FxOperation : NSObject{
    id<FxOperationDelegate> _delegate;
    
    NSURLConnection         *_connection;
    NSMutableData           *_receiveData;
    NSInteger               _statusCode;
    long long               _totalLength;
    
@public
    NSDictionary            *_opInfo;
}

- (id)initWithDelegate:(id<FxOperationDelegate>)delegate
                opInfo:(NSDictionary *)opInfo;
- (NSMutableURLRequest *)urlRequest;
- (void)executeOp;                      //执行
- (void)cancelOp;                       //取消
- (void)parseData:(id)data;             //解析
- (void)parseSuccess:(NSDictionary *)dict jsonString:(NSString *)jsonString;
- (void)parseFail:(id)dict;
- (void)parseProgress:(long long)receivedLength;
- (NSTimeInterval)timeoutInterval;

@end





@protocol FxOperationDelegate <NSObject>

- (void)opSuccess:(id)data;
- (void)opFail:(NSString *)errorMessage;

@optional
- (void)opSuccessEx:(id)data opinfo:(NSDictionary *)dictInfo;
- (void)opFailEx:(NSString *)errorMessage opinfo:(NSDictionary *)dictInfo;
- (void)opSuccessMatch:(id)data;
- (void)opUploadSuccess;

@end
