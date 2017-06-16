//
//  LogInPage.m
//  NewsReader
//
//  Created by liuyingjie on 2017/6/15.
//  Copyright © 2017年 liuyingjieyeah. All rights reserved.
//

#import "LogInPage.h"

@interface LogInPage ()

@end

@implementation LogInPage

- (void)viewDidLoad {
    
//    self.title = LoginTitle;

    [super viewDidLoad];

    [self setNavigationLeft:@"NavigationBell@2x" sel:nil];
    [self setNavigationRight:@"NavigationSquare.png"];
    
    [self setNavigationTitleImage:@"NavBarIcon@2x"];
}

-(IBAction)doLogInEvent:(id)sender{

    


}







- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
