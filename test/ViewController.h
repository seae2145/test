//
//  ViewController.h
//  test
//
//  Created by 張揚法 on 2018/3/21.
//  Copyright © 2018年 張揚法. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableview;


@end

