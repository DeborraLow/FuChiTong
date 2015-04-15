//
//  CustomerViewController.m
//  FuChiTong
//
//  Created by LJ on 15/4/14.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "CustomerViewController.h"
#import "FeedbackViewController.h"
#import "SIAlertView.h"

@interface CustomerViewController ()

@end

@implementation CustomerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"客服服务";
    
 
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

- (IBAction)phoneAction:(id)sender {
    
    SIAlertView *alertView = [[SIAlertView alloc] initWithTitle:nil andMessage:@"富驰资产客服:400-6582-886"];
    [alertView addButtonWithTitle:@"拨打"
                             type:SIAlertViewButtonTypeDefault
                          handler:^(SIAlertView *alertView) {
                              NSLog(@"Default Clicked");
                          }];
    [alertView addButtonWithTitle:@"取消"
                             type:SIAlertViewButtonTypeCancel
                          handler:^(SIAlertView *alertView) {
                              NSLog(@"Cancel Clicked");
                          }];
    alertView.transitionStyle = SIAlertViewTransitionStyleBounce;
    [alertView show];
}

- (IBAction)feedAction:(id)sender {
    [self.navigationController pushViewController:[FeedbackViewController new] animated:YES];
}
@end
