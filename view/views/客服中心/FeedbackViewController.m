//
//  FeedbackViewController.m
//  FuChiTong
//
//  Created by LJ on 15/4/14.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "FeedbackViewController.h"
#import "SIAlertView.h"

@interface FeedbackViewController ()

@end

@implementation FeedbackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"意见反馈";
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(0, 0, 50, 50)];
    [button setTitle:@"发送" forState:UIControlStateNormal];
    [button.titleLabel setFont:[UIFont fontWithName:@"HiraginoSansGB-W3" size:15]];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:0.5] forState:UIControlStateHighlighted];
    [button addTarget:self action:@selector(sendAction) forControlEvents:UIControlEventTouchUpInside];
    
    ///可加入分类 Category
    UIBarButtonItem *negativeSeperator = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    negativeSeperator.width = -12;
    
    UIBarButtonItem *barbtn=[[UIBarButtonItem alloc]initWithCustomView:button];
    self.navigationItem.rightBarButtonItems = @[negativeSeperator,barbtn];
    // Do any additional setup after loading the view from its nib.
}

-(void)sendAction
{
    SIAlertView *alertView = [[SIAlertView alloc] initWithTitle:nil andMessage:@"提交反馈成功"];
    [alertView addButtonWithTitle:@"确定"
                             type:SIAlertViewButtonTypeDefault
                          handler:^(SIAlertView *alertView) {
                              NSLog(@"Default Clicked");
                              [self.navigationController popViewControllerAnimated:YES];
                          }];
    alertView.transitionStyle = SIAlertViewTransitionStyleBounce;
    [alertView show];
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

@end
