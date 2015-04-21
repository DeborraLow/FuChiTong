//
//  RegisterViewController.m
//  FuChiTong
//
//  Created by LJ on 15/4/3.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "RegisterViewController.h"
#import "GZRadioButton.h"
#import "RegisterWebViewController.h"


@interface RegisterViewController ()<GZRadioButtonDelegate>
{
    GZRadioButton * radio1;
    GZRadioButton * radio2;
}

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"注册";
    radio1 = [[GZRadioButton alloc] initWithDelegate:self groupId:@"radio"];
    radio2 = [[GZRadioButton alloc] initWithDelegate:self groupId:@"radio2"];
    radio1.frame = CGRectMake(30, 306, 55, 55);
    radio2.frame = CGRectMake(180, 306, 55, 55);
    [self.view addSubview:radio1];
    [self.view addSubview:radio2];
    
    // Do any additional setup after loading the view from its nib.
}

-(void)didSelectedRadioButton:(GZRadioButton *)radio groupId:(NSString *)groupId
{
    
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

- (IBAction)registerAction:(id)sender {
}

- (IBAction)webAction:(id)sender {
    [self.navigationController pushViewController:[[RegisterWebViewController alloc] initWithWebType:[sender tag] webURL:nil] animated:YES];
}
@end
