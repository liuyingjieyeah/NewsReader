//
//  NewsInfo.h
//  NewsReader
//
//  Created by liuyingjie on 2017/6/16.
//  Copyright © 2017年 liuyingjieyeah. All rights reserved.
//

#import "BaseInfo.h"

@interface NewsInfo : BaseInfo

@property(nonatomic, strong) NSString    *desc;
@property(nonatomic, strong) NSString    *iconUrl;
@property(nonatomic, strong) NSString    *contentUrl;

@end
