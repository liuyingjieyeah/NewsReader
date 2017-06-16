//
//  NewsPage.m
//  NewsReader
//
//  Created by liuyingjie on 2017/6/15.
//  Copyright © 2017年 liuyingjieyeah. All rights reserved.
//

#import "NewsPage.h"


@interface NewsPage ()

@end

@implementation NewsPage

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setNavigationLeft:@"NavigationBell@2x" sel:nil];
    [self setNavigationRight:@"NavigationSquare.png"];
    
    [self setNavigationTitleImage:@"NavBarIcon@2x"];
    
    [self addBarWidget];
}


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    if (_barWidget == nil) {
        [self addBarWidget];
    }
}


//添加顶部滑动菜单
- (void)addBarWidget{

    _barWidget = [[ColumnBarWidget alloc] init];
    _barWidget.delegate = self;
    _barWidget.view.frame = _barBackView.bounds;
    [_barBackView addSubview:_barWidget.view];
    
    //添加半遮挡视图-最后添加防遮挡
    [_barBackView sendSubviewToBack:_barWidget.view];
}

//按钮点击Delegate
- (void)didSelect:(NSInteger)pageIndex{

}










- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}




@end
