//
//  AdvertInfo.h
//  NewsReader
//
//  Created by liuyingjie on 2017/6/15.
//  Copyright © 2017年 liuyingjieyeah. All rights reserved.
//

#import "BaseInfo.h"

@interface AdvertInfo : BaseInfo

@property(nonatomic, strong) NSString    *image;
@property(nonatomic, strong) NSString    *selectImage;
@property(nonatomic, assign) BOOL        unLoad;

+ (NSArray *)pageControllers;

@end
