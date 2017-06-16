//
//  FxBaseController.h
//  NewsReader
//
//  Created by liuyingjie on 2017/6/15.
//  Copyright © 2017年 liuyingjieyeah. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FxOperation.h"

@interface FxBaseController : UIViewController <FxOperationDelegate>{
    FxOperation *_operation;

}

@property (nonatomic, copy) NSString *myTitle;  //自定义标题


- (void)showIndicator:(NSString *)tipMessage
             autoHide:(BOOL)hide
           afterDelay:(BOOL)delay;
- (void)hideIndicator;

- (void)setNavigationTitleImage:(NSString *)imageName;
- (void)setNavigationLeft:(NSString *)imageName sel:(SEL)sel;
- (void)setNavigationRight:(NSString *)imageName;
- (void)setStatusBarStyle:(UIStatusBarStyle)style;


@end
