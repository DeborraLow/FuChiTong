//
//  RechargeViewController.m
//  FuChiTong
//
//  Created by LJ on 15/4/17.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "RechargeViewController.h"
#import "ChoosePayViewController.h"

@interface RechargeViewController ()

@end

@implementation RechargeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"充值";
    _text.numberFormatter.currencyCode = @" ";
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

- (IBAction)chongzhiAction:(id)sender {
    [self.navigationController pushViewController:[ChoosePayViewController new] animated:YES];
}
@end
