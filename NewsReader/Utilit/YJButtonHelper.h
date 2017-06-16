//
//  ButtonHelper.h
//  NewsReader
//
//  Created by liuyingjie on 2017/6/16.
//  Copyright © 2017年 liuyingjieyeah. All rights reserved.
//

#import <Foundation/Foundation.h>

//#import <UIKit/UIKit.h> 

/**
 *  自定义按钮
 */

@interface YJButtonHelper : NSObject

@property(nonatomic, strong) UIButton   *button;
@property(nonatomic, strong) UIColor    *normalColor;
@property(nonatomic, strong) UIColor    *selectedColor;

- (void)setButton:(UIButton *)btn
      normalColor:(UIColor *)nColor
    selectedColor:(UIColor *)sColor;

- (void)setSelected:(BOOL)selected;

@end
