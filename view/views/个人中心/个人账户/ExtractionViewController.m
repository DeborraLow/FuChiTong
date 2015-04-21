//
//  ExtractionViewController.m
//  FuChiTong
//
//  Created by LJ on 15/4/17.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "ExtractionViewController.h"
#import "ChooseCardViewController.h"

@interface ExtractionViewController ()

@end

@implementation ExtractionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"提现";
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

- (IBAction)nextAction:(id)sender {
    [self.navigationController pushViewController:[ChooseCardViewController new] animated:YES];
}
@end
