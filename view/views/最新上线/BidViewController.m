//
//  BidViewController.m
//  FuChiTong
//
//  Created by LJ on 15/4/16.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "BidViewController.h"
#import "PayViewController.h"
#import "BidDetailViewController.h"

@interface BidViewController ()

@end

@implementation BidViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"投标";
    [_scrollView setContentSize:CGSizeMake(300, 564)];
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

- (IBAction)detailAction:(id)sender {
    [self.navigationController pushViewController:[BidDetailViewController new] animated:YES];
}

- (IBAction)investAction:(id)sender {
    [self.navigationController pushViewController:[PayViewController new] animated:YES];
}
@end
