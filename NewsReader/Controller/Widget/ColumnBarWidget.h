//
//  ColumnBarWidget.h
//  NewsReader
//
//  Created by liuyingjie on 2017/6/16.
//  Copyright © 2017年 liuyingjieyeah. All rights reserved.
//

/**
 *  顶部滑动菜单
 */

#import "BaseWidget.h"
#import "YJButtonHelper.h"

@protocol ColumnBarDelegate;
@interface ColumnBarWidget : BaseWidget {
    IBOutlet UIScrollView   *_scrollView;       //滚动视图
    YJButtonHelper          *_btnHelper;        //控制选中按钮颜色改变
}

@property(nonatomic, assign) NSInteger      pageIndex;          //选中索引
@property(nonatomic, assign) id<ColumnBarDelegate> delegate;    //回调

@end


//点按代理
@protocol ColumnBarDelegate <NSObject>

- (void)didSelect:(NSInteger)pageIndex;

@end
