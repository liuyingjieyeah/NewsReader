//
//  NewsPage.h
//  NewsReader
//
//  Created by liuyingjie on 2017/6/15.
//  Copyright © 2017年 liuyingjieyeah. All rights reserved.
//

#import "FxBaseController.h"
#import "ColumnBarWidget.h"


@interface NewsPage : FxBaseController<ColumnBarDelegate>{

    IBOutlet UIView                 *_barBackView;

    ColumnBarWidget                 *_barWidget;        //滑动条

    
}


@end
