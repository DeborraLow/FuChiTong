//
//  BidDetailViewController.m
//  FuChiTong
//
//  Created by LJ on 15/4/16.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "BidDetailViewController.h"
#import "GZTreeView.h"

@interface BidDetailViewController ()

@end

@implementation BidDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"标的详情";
    NSArray * contens = @[@{@"head":@"用户信息",@"content":@"昵 称：87369***85\n公司行业：建筑工程\n收入范围：10000-20000元年\n年龄：31\n公司规模：10人以下\n房产：有\n房贷：有\n车产：有 \n车贷：无\n学历 ：大专\n职位 ：企业主 \n工作城市：广东 佛山\n婚姻：已婚工作时间5年以上"},@{@"head":@"审核状态",@"content":@"审核状态：申请贷款 \n时间：2015.1.1\n\n审核状态：中审（电话） \n时间：2015.1.1 \n\n审核状态：工作认证       \n时间：2015.1.1 \n\n审核状态：收入认证      \n时间：2015.1.1  \n\n审核状态：抵押估值     \n时间：2015.1.1  \n\n审核状态：机构担保    \n时间：2015.1.1  \n\n审核状态：通过      \n时间：2015.1.1"},@{@"head":@"描述",@"content":@"客户在安徽省经营一家公司，收入稳定，本借款用于资金周转。本借款已通过金融联贷及联金所初审并被推荐至有利网；推荐方提供全额本息担保。富驰资产于2015年01月1日终审通过。"}];
    
    GZTreeView*treeView = [[GZTreeView alloc] initWithFrame:CGRectMake(10, 64, GZContent_Width-20, GZContent_Height - 54)];
    treeView.backgroundColor = [UIColor clearColor];
    treeView.open = YES;
    treeView.scrollEnabled = YES;
    treeView.nodeInfos = contens;
    [self.view addSubview:treeView];
    
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

@end
