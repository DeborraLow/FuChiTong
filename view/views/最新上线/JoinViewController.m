//
//  JoinViewController.m
//  FuChiTong
//
//  Created by LJ on 15/4/15.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "JoinViewController.h"
#import "PayViewController.h"

@interface JoinViewController ()

@end

@implementation JoinViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"活期投资";
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)joinAction:(id)sender {
    [self.navigationController pushViewController:[PayViewController new] animated:YES];
}
@end
