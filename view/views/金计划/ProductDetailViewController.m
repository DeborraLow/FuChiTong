//
//  ProductDetailViewController.m
//  FuChiTong
//
//  Created by LJ on 15/4/3.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "ProductDetailViewController.h"
#import "GZTreeView.h"

@interface ProductDetailViewController ()
{
    NSDictionary * productData;
    GZTreeView * treeView;
}

@end

@implementation ProductDetailViewController

-(id)initWithProductData:(NSDictionary *)data
{
    self = [super init];
    if (self) {
        productData = data;
        self.title = [NSString stringWithFormat:@"%@详情",[productData objectForKey:@"name"]];
    }
    return self;
}
///此款理财模式类似于季度金，但是相对季度金显得更加的灵活，由于时间周期的短所以相对的利率也会少一点，比较适用于目前有闲置资金，但是过一段时间后可能会有使用需求的理财人群，将闲置资金利用起来，可以根据自己对于闲置资金时间长短配置合适自己的理财模式，从而实现资产增值投资对象有一笔闲置资金，可能需要随时取用，或暂未决定投资目标，或想确保资金灵活同时获得比余额宝更高更稳收益的投资人。\n投资到期日    1个月\n保障级别     本息保障\n利息分配     T+1计息。投资后第1日起，天天计息。投资人在投资次日会看到前1日利息（例如1月1日成功投资，则在1月2日看到首次利息）；此后每天，投资人会看到前一天利息，直至退出，投资人会受到所有的利息和本金。\n退出机制     1个月后免费退出，提前退出收取本金的5%。   \n费用说明    入团手续费0%，居间服务费为利息的5%，退团费0%，提现费用3元/笔

- (void)viewDidLoad {
    [super viewDidLoad];
    treeView = [[GZTreeView alloc] initWithFrame:CGRectMake(10, 64, GZContent_Width-20, GZContent_Height - 54)];
    treeView.backgroundColor = [UIColor clearColor];
    NSString * content1 = nil;
    NSString * content2= nil;
    if([[productData objectForKey:@"name"] isEqualToString:@"单月金"])
    {
        content1 = @"此款理财模式类似于季度金，但是相对季度金显得更加的灵活，由于时间周期的短所以相对的利率也会少一点，比较适用于目前有闲置资金，但是过一段时间后可能会有使用需求的理财人群，将闲置资金利用起来，可以根据自己对于闲置资金时间长短配置合适自己的理财模式，从而实现资产增值投资对象有一笔闲置资金，可能需要随时取用，或暂未决定投资目标，或想确保资金灵活同时获得比余额宝更高更稳收益的投资人。\n投资到期日    1个月\n保障级别     本息保障\n利息分配     T+1计息。投资后第1日起，天天计息。投资人在投资次日会看到前1日利息（例如1月1日成功投资，则在1月2日看到首次利息）；此后每天，投资人会看到前一天利息，直至退出，投资人会受到所有的利息和本金。\n退出机制     1个月后免费退出，提前退出收取本金的5%。   \n费用说明    入团手续费0%，居间服务费为利息的5%，退团费0%，提现费用3元/笔";
        content2 = @"投资10000元，加入金计划，对于不同期限，到期后各能拿到多少利息？\n单月金产品，利率8.5%，可得利息67.3元。 \n单季金产品，利率10.5%，可得利息249.375元。\n双季金产品，利12.5%，可得利息593.75元 \n年满金产品，利率14.5%，可得利息1377.5元。 \n月月金产品，利率13.5%，可得利息1282.5元，每月利息106.875元\n理财金产品，利率15.5%，可得利息1472.5元。每月利息122.71元(已扣服务费5%，且计算均以最小利率为基础，实际收益率高于最小利率。)\n\n金计划安全么？\n加入金计划的资金，全部用于投资真实的小额借款项目，分散投资。同时，有富驰资产100%本息保障为产品所投的标的资金提供安全措施，确保用户投资本金高枕无忧。\n\n金计划还有哪些特点？\n超低门槛：200元即可以加入，以100元倍数递增。\n零服务费：购买金计划资金充值免费，加入和退出免费费。 （提前退出收取本金5%，收取少许服务费：利息5%。\n\n金计划投资金额利率是否阶梯性计算？\n以单月金为例：如果投资9千元，利率为8%，投资1万元，利率都为8.5%，不再减去1万以下的部分。其他投资项目均适用。";
    }
    else if ([[productData objectForKey:@"name"] isEqualToString:@"单季金"])
    {
        content1 = @"单季金是富驰推出的一款短期理财模式，为一个季度（90天）预期年化收益为11.5%，到期后所产生的利息以及本金一次性返还。有很强的灵活性，非常适合短期资金闲置人群配量。\n投资对象     有一笔闲置资金，可能需要随时取用，或暂未决定投资目标，或想确保资金灵活同时获更高更稳收益的投资人。\n投资到期日   3个月\n保障级别     本息保障\n利息分配     T+1计息。投资后第1日起，天天计息。投资人在投资次日会看到前1日利息（例如1月1日成功投资，则在1月2日看到首次利息）；此后每天，投资人会看到前一天利息，直至退出，投资人会受到所有的利息和本金。\n退出机制   3个月后免费退出，提前退出收取本金的5%。\n 费用说明     入团手续费0%，居间服务费为利息的5%，退团费0%，提现费用3元/笔";
        content2 = @"投资10000元，加入金计划，对于不同期限，到期后各能拿到多少利息？\n单月金产品，利率8.5%，可得利息67.3元。 \n单季金产品，利率10.5%，可得利息249.375元。 \n双季金产品，利12.5%，可得利息593.75元 \n年满金产品，利率14.5%，可得利息1377.5元。\n月月金产品，利率13.5%，可得利息1282.5元，每月利息106.875元\n理财金产品，利率15.5%，可得利息1472.5元。，每月利息122.71元\n(已扣服务费5%，且计算均以最小利率为基础，实际收益率高于最小利率。)\n金计划安全么？\n加入金计划的资金，全部用于投资真实的小额借款项目，分散投资。同时，有富驰资产100%本息保障为产品所投的标的资金提供安全措施，确保用户投资本金高枕无忧。\n金计划还有哪些特点？\n超低门槛：200元即可以加入，以100元倍数递增。\n零手续费：购买金计划资金充值免费，加入和退出免费费。 （提前退出收取本金5%，收取少许服务费：利息5%。\n金计划投资金额利率是否阶梯性计算？\n以单月金为例：如果投资9千元，利率为8%，投资1万元，利率都为8.5%，不再减去1万以下的部分。其他投资项目均适用。";
    }
    else if ([[productData objectForKey:@"name"] isEqualToString:@"双季金"])
    {
        content1 = @"双季金是富驰推出的一款较短期理财模式，为3个季度（180天）预期年化收益为13.5%，到期后所产生的利息以及本金一次性返还。有较强的灵活性，非常适合短期资金闲置人群配量。投资人可以根据自己对于闲置资金时间长短配置适合自己的理财模式，从而实现财富增值。\n投资对象      有一笔闲置资金，不需要随时取用，想要获得比银行及其他理财产品更高更稳收益的投资人。\n投资到期日    6个月\n保障级别     本息保障\n利息分配     T+1计息。投资后第1日起，天天计息。投资人在投资次日会看到前1日利息（例如1月1日成功投资，则在1月2日看到首次利息）；此后每天，投资人会看到前一天利息，直至退出，投资人会受到所有的利息和本金。\n退出机制     6个月后免费退出，提前退出收取本金的5%。\n费用说明     入团手续费0%，居间服务费为利息的5%，退团费0%，提现费用3元/笔";
        content2 = @"投资10000元，加入金计划，对于不同期限，到期后各能拿到多少利息？\n单月金产品，利率8.5%，可得利息67.3元。 \n单季金产品，利率10.5%，可得利息249.375元。 \n双季金产品，利12.5%，可得利息593.75元 \n年满金产品，利率14.5%，可得利息1377.5元。 \n月月金产品，利率13.5%，可得利息1282.5元，每月利息106.875元\n理财金产品，利率15.5%，可得利息1472.5元。，每月利息122.71元\n(已扣服务费5%，且计算均以最小利率为基础，实际收益率高于最小利率。)\n金计划安全么？\n加入金计划的资金，全部用于投资真实的小额借款项目，分散投资。同时，有富驰资产100%本息保障为产品所投的标的资金提供安全措施，确保用户投资本金高枕无忧。\n金计划还有哪些特点？\n超低门槛：200元即可以加入，以100元倍数递增。\n零服务费：购买金计划资金充值免费，加入和退出免费费。 （提前退出收取本金5%，收取少许服务费：利息5%。\n金计划投资金额利率是否阶梯性计算？\n以单月金为例：如果投资9千元，利率为8%，投资1万元，利率都为8.5%，不再减去1万以下的部分。其他投资项目均适用。";
    }
    else if ([[productData objectForKey:@"name"] isEqualToString:@"年满金"])
    {
        content1 = @"年满金是富驰推出的一款长期理财模式，为12个月预期年化收益为15.5%，到期后本金利息一次性返还。收益高，非常适合长期资金闲置人群配量。\n投资对象      有一笔闲置资金，不需要随时取用，想要获得比银行及其他理财产品更高更稳收益的投资人。\n投资到期日    12个月\n保障级别     本息保障\n利息分配     T+1计息。投资后第1日起，天天计息。投资人在投资次日会看到前1日利息（例如1月1日成功投资，则在1月2日看到首次利息）；此后每天，投资人会看到前一天利息，直至退出，投资人会受到所有的利息和本金。\n退出机制     12个月后免费退出，提前退出收取本金的5%。\n 费用说明     入团手续费0%，居间服务费为利息的5%，退团费0%，提现费用3元/笔";
        content2 = @"投资10000元，加入金计划，对于不同期限，到期后各能拿到多少利息？\n单月金产品，利率8.5%，可得利息67.3元。 \n单季金产品，利率10.5%，可得利息249.375元。 \n双季金产品，利12.5%，可得利息593.75元 \n年满金产品，利率14.5%，可得利息1377.5元。 \n月月金产品，利率13.5%，可得利息1282.5元，每月利息106.875元\n理财金产品，利率15.5%，可得利息1472.5元。，每月利息122.71元\n(已扣服务费5%，且计算均以最小利率为基础，实际收益率高于最小利率。)\n金计划安全么？\n加入金计划的资金，全部用于投资真实的小额借款项目，分散投资。同时，有富驰资产100%本息保障为产品所投的标的资金提供安全措施，确保用户投资本金高枕无忧。\n金计划还有哪些特点？\n超低门槛：200元即可以加入，以100元倍数递增。\n零服务费：购买金计划资金充值免费，加入和退出免费费。 （提前退出收取本金5%，收取少许服务费：利息5%。\n金计划投资金额利率是否阶梯性计算？\n以单月金为例：如果投资9千元，利率为8%，投资1万元，利率都为8.5%，不再减去1万以下的部分。其他投资项目均适用。";
    }
    else if ([[productData objectForKey:@"name"] isEqualToString:@"月月金"])
    {
        content1 = @" 月月金是富驰推出的一款较长期理财模式，为12个月预期年化收益为14.5%，到每月还利息\n此款理财模式为长期，虽然时间较长，但利率很高，适用于有闲置资金且且每月无太大大花销的人群。\n投资对象      有一笔闲置资金，不需要随时取用，想要获得比银行及其他理财产品更高更稳收益的投资人。\n投资到期日    12个月\n保障级别     本息保障\n利息分配     投资后第1日起，每日计息。投资人在投资次月会收到前1月利息（例如1月1日成功投资，则在2月1日收到首次利息）；此后每月，投资人会收到前一月利息，直至退出。\n退出机制     12个月后免费退出，提前退出收取本金的5%。\n费用说明     入团手续费0%，居间服务费为利息的5%，退团费0%，提现费用3元/笔";
        content2 = @"投资10000元，加入金计划，对于不同期限，到期后各能拿到多少利息？\n单月金产品，利率8.5%，可得利息67.3元。 \n单季金产品，利率10.5%，可得利息249.375元。 \n双季金产品，利12.5%，可得利息593.75元 \n年满金产品，利率14.5%，可得利息1377.5元。 \n月月金产品，利率13.5%，可得利息1282.5元，每月利息106.875元\n理财金产品，利率15.5%，可得利息1472.5元。，每月利息122.71元\n(已扣服务费5%，且计算均以最小利率为基础，实际收益率高于最小利率。)\n金计划安全么？\n加入金计划的资金，全部用于投资真实的小额借款项目，分散投资。同时，有富驰资产100%本息保障为产品所投的标的资金提供安全措施，确保用户投资本金高枕无忧。\n金计划还有哪些特点？\n超低门槛：200元即可以加入，以100元倍数递增。\n零服务费：购买金计划资金充值免费，加入和退出免费费。 （提前退出收取本金5%，收取少许服务费：利息5%。\n金计划投资金额利率是否阶梯性计算？\n以单月金为例：如果投资9千元，利率为8%，投资1万元，利率都为8.5%，不再减去1万以下的部分。其他投资项目均适用。";
    }
    else if ([[productData objectForKey:@"name"] isEqualToString:@"理财金"])
    {
        content1 = @"理财金是富驰推出的一款长期理财模式，为18个月预期年化收益为16.5%，到每月还利息，到期后本金一次性返还。收益高，非常适合长期资金闲置人群配量。\n投资对象      有一笔闲置资金，不需要随时取用，想要获得比银行及其他理财产品更高更稳收益的投资人。\n投资到期日    12个月\n保障级别     本息保障\n利息分配     投资后第1日起，每日计息。投资人在投资次月会收到前1月利息（例如1月1日成功投资，则在2月1日收到首次利息）；此后每月，投资人会收到前一月利息，直至退出。\n退出机制     18个月后免费退出，提前退出收取本金的5%。\n 费用说明     入团手续费0%，居间服务费为利息的5%，退团费0%，提现费用3元/笔";
        content2 = @"投资10000元，加入金计划，对于不同期限，到期后各能拿到多少利息？\n单月金产品，利率8.5%，可得利息67.3元。 \n单季金产品，利率10.5%，可得利息249.375元。 \n双季金产品，利12.5%，可得利息593.75元 \n年满金产品，利率14.5%，可得利息1377.5元。 \n月月金产品，利率13.5%，可得利息1282.5元，每月利息106.875元\n理财金产品，利率15.5%，可得利息1472.5元。，每月利息122.71元\n(已扣服务费5%，且计算均以最小利率为基础，实际收益率高于最小利率。)\n金计划安全么？\n加入金计划的资金，全部用于投资真实的小额借款项目，分散投资。同时，有富驰资产100%本息保障为产品所投的标的资金提供安全措施，确保用户投资本金高枕无忧。\n金计划还有哪些特点？\n超低门槛：200元即可以加入，以100元倍数递增。\n零服务费：购买金计划资金充值免费，加入和退出免费费。 （提前退出收取本金5%，收取少许服务费：利息5%。";
    }
    treeView.nodeInfos = @[@{@"head":[NSString stringWithFormat:@"%@介绍",[productData objectForKey:@"name"]],@"content":content1},@{@"head":@"常见问题",@"content":content2}];
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
