//
//  ViewController.m
//  test
//
//  Created by 張揚法 on 2018/3/21.
//  Copyright © 2018年 張揚法. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"
#import "TableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
        
    [self.tableview registerNib:[UINib nibWithNibName:NSStringFromClass([TableViewCell class]) bundle:nil] forCellReuseIdentifier:NSStringFromClass([TableViewCell class])];
   
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    
    
    return 8;
}



- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([TableViewCell class]) forIndexPath:indexPath];
    
    cell.textLabel.text = @"123";
    
    return cell;
    
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Hi" message:@"Yoyo" preferredStyle:UIAlertControllerStyleAlert];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action){
        
        
    }]];
    
    
    
    [self presentViewController:alert animated:YES completion:nil];
    
//    ViewController2 *viewcontroller2 = [[ViewController2 alloc] init];
//    [self.navigationController pushViewController:viewcontroller2 animated:YES];
    
    NSLog(@"99999");
}


@end
