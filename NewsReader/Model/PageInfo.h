//
//  PageInfo.h
//  NewsReader
//
//  Created by liuyingjie on 2017/6/16.
//  Copyright © 2017年 liuyingjieyeah. All rights reserved.
//

/**
 *  配置子控制器页面Model
 */

#import "BaseInfo.h"

@interface PageInfo : BaseInfo

@property(nonatomic, strong) NSString    *image;
@property(nonatomic, strong) NSString    *selectImage;
@property(nonatomic, assign) BOOL        unLoad;        //是否加载该页面

+ (NSArray *)pageControllers;

@end
