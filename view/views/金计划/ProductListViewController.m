//
//  ProductListViewController.m
//  FuChiTong
//
//  Created by LJ on 15/4/3.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "ProductListViewController.h"
#import "ProductListTableViewCell.h"
#import "ProductDetailViewController.h"
#import "ProductListTableViewCell.h"
#import "ProductInvestViewController.h"
#import "SIAlertView.h"

@interface ProductListViewController ()<UITableViewDataSource,UITableViewDelegate,ProductListCellDelegate>
{
    NSDictionary * productData;
    NSArray * colors;
    NSArray * names;
    NSArray * prices;
    NSArray * shouyis;
}
@property (nonatomic,strong)UITableView * tableView;
@end

@implementation ProductListViewController

-(id)initWithProductData:(NSDictionary *)proData
{
    self = [super init];
    if (self) {
        productData = proData;
        self.title = [productData objectForKey:@"name"];
        
    }
    return self;
}

- (IBAction)kefuAction:(id)sender {
    ///???客服按钮
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

- (IBAction)detailAction:(id)sender {
    [self.navigationController pushViewController:[[ProductDetailViewController alloc] initWithProductData:productData] animated:YES];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    colors = @[RGBCOLOR(247, 177, 37),RGBCOLOR(246, 131, 32),RGBCOLOR(238, 93, 39)];
    prices = [productData objectForKey:@"prices"];
    names = [productData objectForKey:@"names"];
    shouyis = [productData objectForKey:@"shouyis"];
    
    [_detailButton setTitle:[NSString stringWithFormat:@"%@详情",[productData objectForKey:@"name"]] forState:UIControlStateNormal];

    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(8, 72, GZContent_Width-16, GZContent_Height - 114) style:UITableViewStylePlain];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    _tableView.backgroundColor = [UIColor clearColor];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [_tableView setShowsVerticalScrollIndicator:NO];
    self.tableView.delaysContentTouches = NO;
    [self.view addSubview:_tableView];
    for (UIView *currentView in self.tableView.subviews)
    {
        if([currentView isKindOfClass:[UIScrollView class]])
        {
            ((UIScrollView *)currentView).delaysContentTouches = NO;
            break;
        }
    }
    // Do any additional setup after loading the view from its nib.
}

#pragma mark CellDidJoin
-(void)didJoin:(NSInteger)index
{
    [self.navigationController pushViewController:[[ProductInvestViewController alloc] initWithProductData:productData index:index] animated:YES];
}

#pragma mark UITableViewDataSource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [prices count];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 108;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellId = @"ProductListTableViewCell";
    ProductListTableViewCell*cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"ProductListTableViewCell" owner:self options:nil] lastObject];
    }
    cell.tag = indexPath.row;
    cell.delegate = self;
    [cell.joinButton setBackgroundColor:colors[indexPath.row > 2?indexPath.row%3:indexPath.row]];
    cell.colorView.backgroundColor = colors[indexPath.row > 2?indexPath.row%3:indexPath.row];
    cell.name.text = [NSString stringWithFormat:@"%@%@",[productData objectForKey:@"name"],names[indexPath.row]];
    cell.price.text = [NSString stringWithFormat:@"金额%@元",prices[indexPath.row]];
    cell.profit.text = [NSString stringWithFormat:@"预计年收益%@",shouyis[indexPath.row]];
    cell.detail.text = [NSString stringWithFormat:@"期限%@月，到期返本付息，收益每天可见",[productData objectForKey:@"month"]];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.backgroundColor = [UIColor clearColor];
    return cell;
}

#pragma mark UITableViewDelegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
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

@end
