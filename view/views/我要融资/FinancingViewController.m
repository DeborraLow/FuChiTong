//
//  FinancingViewController.m
//  FuChiTong
//
//  Created by LJ on 15/4/14.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "FinancingViewController.h"
#import "GZTreeView.h"

@interface FinancingViewController ()
{
    GZTreeView * treeView;
}

@end

@implementation FinancingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"我要融资";
    
    [_scrollView setShowsVerticalScrollIndicator:NO];
    [_scrollView setContentSize:CGSizeMake(320, 800)];
    
    NSArray * nodes = @[@{@"head":@"如何判断借款人的利息等级",@"content":@"富驰资产会依据借款人所需要的借款金额与还款条件、提供的证明材料，用来评估信用记录和还款能力，公允地为每一个借款申请者划定相应的贷款利息区间。目前扶富驰资产的利息区间为8%至23%。信用等级是借款人的信用属性，也是投资者判断借款人违约风险的重要依据之一。目前富驰资产的信用等级由高到低分为：AA、A、B、C、D、E。信用等级越高，意味着违约率越低。"},@{@"head":@"在富驰资产投资或者贷款，需要支付哪些费用？",@"content":@"出借人的费用：对于出借人，我们收取出借人利息收益的5%做为居间服务费，提现时，收取提现费3元/笔。此外富驰资产不收取任何其他费用。贷款不成功，资金退回给出借人时不收取任何费用。参加“金计划”的出借人按照各投资团约定的费率支付相关费用。借款人的费用：针对商业类或者个人类的贷款，我们收取贷款金额2.0%起做为居间服务费，另外将每月收取贷款金额的0.2%起做为账户管理费。"},@{@"head":@"请问还款逾期的罚息规定？",@"content":@"我们提供7天的宽限期。如果7天后仍未还款，则从逾期当日开始按照逾期本息总额计算每天千分之一的罚息:罚息总额 = 逾期本息 × 对应罚息利率(0.1%) × 逾期天数"}];
    treeView = [[GZTreeView alloc] initWithFrame:CGRectMake(10, 440, GZContent_Width-20,170)];
    treeView.backgroundColor = [UIColor clearColor];
    treeView.nodeInfos = nodes;
    [_scrollView addSubview:treeView];
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
