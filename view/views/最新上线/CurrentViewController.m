//
//  CurrentViewController.m
//  FuChiTong
//
//  Created by LJ on 15/4/15.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "CurrentViewController.h"
#import "GZTreeView.h"

@interface CurrentViewController ()
{
    GZTreeView * treeView;
    NSArray * contents;
}

@end

@implementation CurrentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"活期详情";
    contents = @[@{@"head":@"活期投资",@"content":@"此款理财模式是所有理财模式里面最灵活的，随存随取，利率相较于其他类似产品更高，投资人可以根据自己对于闲置资金时间长短配置合适自己的理财模式，从而实现资产增值。\n投资对象     有一笔闲置资金，可能需要随时取用，或暂未决定投资目标，或想确保资金灵活同时获更高更稳收益的投资人。\n投资到期日   随时支取\n保障级别     本息保障\n利息分配     T+1计息。投资后第1日起，天天计息。投资人在投资次日会看到前1日利息（例如1月1日成功投资，则在1月2日看到首次利息）；此后每天，投资人会看到前一天利息，直至退出，投资人会受到所有的利息和本金。\n退出机制     随时免费退出，无退出费用。\n费用说明     入团手续费0%，居间服务费为利息的5%，退团费0%，提现费用3元/笔"},@{@"head":@"常见问题",@"content":@"活期投资按天数计算利息，如：投资10000元，实际天数为102天，利率为6%\n利息=\n(10000*6%÷365)*102*95%=159.29元\n\n活期投资安全么？\n加入活期投资的资金，全部用于投资真实的小额借款项目，分散投资。同时，有富驰资产100%本息保障为产品所投的标的资金提供安全措施，确保用户投资本金高枕无忧。\n\n活期投资还有哪些特点？\n超低门槛：200元即可以加入，以100元倍数递增。\n零服务费：购买金计划资金充值免费，加入和退出免费费。 （无提前退出费用，收取少许服务费：利息5%。）"}];
    treeView = [[GZTreeView alloc] initWithFrame:CGRectMake(10, 64, GZContent_Width-20, GZContent_Height - 54)];
    treeView.backgroundColor = [UIColor clearColor];
    treeView.nodeInfos = contents;
    treeView.open = YES;
    treeView.scrollEnabled = YES;
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
