//
//  FxBaseController.m
//  NewsReader
//
//  Created by liuyingjie on 2017/6/15.
//  Copyright © 2017年 liuyingjieyeah. All rights reserved.
//

#import "FxBaseController.h"

@interface FxBaseController ()

@property (nonatomic, strong) UILabel *titleLabel;

@end

@implementation FxBaseController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.titleLabel = [[UILabel alloc] init];
        self.titleLabel.backgroundColor = [UIColor clearColor];
        self.titleLabel.font = [UIFont systemFontOfSize:18];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        self.titleLabel.textColor = [UIColor whiteColor];
        self.navigationItem.titleView = self.titleLabel;
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    //导航条背景
    [self setNavBarImage];
    
    //状态栏颜色-info.plist已设置
//    [self setStatusBarStyle:UIStatusBarStyleLightContent];

    [self.navigationController setNavigationBarHidden:NO animated:YES];
    
//    StatisIntoPage(GetPageName());
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
//    StatisOutPage(GetPageName());
}

- (void)dealloc
{
    [_operation cancelOp];
    _operation = nil;
}

- (void)opFail:(NSString *)errorMessage
{
    BASE_ERROR_FUN(errorMessage);
    [self showIndicator:errorMessage autoHide:YES afterDelay:YES];
}

- (void)opSuccess:(id)data
{
    [self hideIndicator];
}


/**
 *  设置自定义标题
 */
- (void)setMyTitle:(NSString *)myTitle{
    CGSize size = [[YJToolClass createToolClass] sizeWithString:myTitle andFont:[UIFont systemFontOfSize:18] andMaxWidth:200.0f andMaxHeight:20000.0f];
    self.titleLabel.bounds = CGRectMake(0, 0, size.width, 30);
    self.titleLabel.text = myTitle;
    
}

- (void)setNavigationTitleImage:(NSString *)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    
    self.navigationItem.titleView = imageView;
}

/**
 *  导航栏背景颜色及图片
 */
- (void)setNavBarImage
{
    UIImage *image = [UIImage imageNamed:isIOS7?@"NavigationBar64.png":@"NavigationBar44.png"];
    [self.navigationController.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
    
    NSDictionary *attribute = @{
                                NSForegroundColorAttributeName:[UIColor whiteColor],
                                NSFontAttributeName:[UIFont systemFontOfSize:18]
                                };
    
    [self.navigationController.navigationBar setTitleTextAttributes:attribute];
}


- (UIButton *)customButton:(NSString *)imageName
                  selector:(SEL)sel
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    btn.frame = CGRectMake(0, 0, 44, 44);
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [btn addTarget:self action:sel forControlEvents:UIControlEventTouchUpInside];
    
    return btn;
}


- (void)setNavigationLeft:(NSString *)imageName sel:(SEL)sel
{
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:[self customButton:imageName selector:sel]];
    
    self.navigationItem.leftBarButtonItem = item;
}

- (void)setNavigationRight:(NSString *)imageName
{
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:[self customButton:imageName selector:@selector(doRight:)]];
    
    self.navigationItem.rightBarButtonItem = item;
}

- (IBAction)doRight:(id)sender
{
    
}

- (IBAction)doBack:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}



- (void)showIndicator:(NSString *)tipMessage
             autoHide:(BOOL)hide
           afterDelay:(BOOL)delay
{

    
}

- (void)hideIndicator
{
//    [_activity hide:YES];
}





- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}



@end
