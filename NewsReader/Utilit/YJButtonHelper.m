//
//  ButtonHelper.m
//  NewsReader
//
//  Created by liuyingjie on 2017/6/16.
//  Copyright © 2017年 liuyingjieyeah. All rights reserved.
//

#import "YJButtonHelper.h"

@implementation YJButtonHelper

- (void)setButton:(UIButton *)btn
      normalColor:(UIColor *)nColor
    selectedColor:(UIColor *)sColor
{
    [self setSelected:NO];
    
    self.button = btn;
    self.normalColor = nColor;
    self.selectedColor = sColor;
    
    [self setSelected:YES];
}

- (void)setSelected:(BOOL)selected
{
    UIColor *color = selected?_selectedColor:_normalColor;
    
    [_button setTitleColor:color forState:UIControlStateNormal];
    [_button setTitleColor:color forState:UIControlStateHighlighted];
}


@end
