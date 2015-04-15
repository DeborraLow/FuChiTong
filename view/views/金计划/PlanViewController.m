//
//  PlanViewController.m
//  FuChiTong
//
//  Created by LJ on 15/4/3.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "PlanViewController.h"
#import "ProductListViewController.h"
#import "PlanTableViewCell.h"

@interface PlanViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    NSArray * colors;
    NSArray * datas;
}
@property (nonatomic,strong)UITableView * tableView;
@end


@implementation PlanViewController

-(void)viewWillAppear:(BOOL)animated
{
    if (_tableView) {
        [_tableView deselectRowAtIndexPath:[_tableView indexPathForSelectedRow] animated:YES];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"金计划";
    colors = @[RGBCOLOR(251, 177, 29),RGBCOLOR(249, 128, 35),RGBCOLOR(247, 94, 37),RGBCOLOR(218, 65, 13),RGBCOLOR(217, 37, 16),RGBCOLOR(206, 0, 9)];
    
    datas = @[
              @{@"name":@"单月金",@"value":@"9.0",@"month":@"1",@"prices":@[@"200-9999元",@"10000-99999元",@"10万元以上"],@"shouyis":@[@"8%",@"8.5%",@"9.5%"],@"names":@[@"A",@"B",@"C"]},
              @{@"name":@"单季金",@"value":@"8.5",@"month":@"3",@"prices":@[@"200-9999元",@"10000-99999元",@"10万元以上"],@"shouyis":@[@"8%",@"8.5%",@"9.5%"],@"names":@[@"A",@"B",@"C"]},
              @{@"name":@"双季金",@"value":@"11.2",@"month":@"6",@"prices":@[@"200-9999元",@"10000-99999元",@"10万元以上"],@"shouyis":@[@"8%",@"8.5%",@"9.5%"],@"names":@[@"A",@"B",@"C"]},
              @{@"name":@"年满金",@"value":@"9.0",@"month":@"12",@"prices":@[@"200-9999元",@"10000-99999元",@"10万元以上"],@"shouyis":@[@"8%",@"8.5%",@"9.5%"],@"names":@[@"A",@"B",@"C"]},
              @{@"name":@"月月金",@"value":@"12.5",@"month":@"12",@"prices":@[@"200-9999元",@"10000-99999元",@"10万元以上"],@"shouyis":@[@"8%",@"8.5%",@"9.5%"],@"names":@[@"A",@"B",@"C"]},
              @{@"name":@"理财金",@"value":@"12.0",@"month":@"18",@"prices":@[@"200-9999元",@"10000-99999元",@"10万元以上"],@"shouyis":@[@"8%",@"8.5%",@"9.5%"],@"names":@[@"A",@"B",@"C"]}
  ];
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(8, 8, GZContent_Width-16,GZContent_Height+12) style:UITableViewStylePlain];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    _tableView.backgroundColor = [UIColor clearColor];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [_tableView setShowsVerticalScrollIndicator:NO];
    [self.view addSubview:_tableView];
    // Do any additional setup after loading the view from its nib.
}


#pragma mark UITableViewDataSource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [datas count];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 72;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellId = @"PlanTableViewCell";
    NSDictionary * currentData = datas[indexPath.row];
    PlanTableViewCell*cell = (PlanTableViewCell*)[tableView dequeueReusableCellWithIdentifier:cellId];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"PlanTableViewCell" owner:self options:nil] lastObject];
    }
    UIColor*color = colors[indexPath.row > 5?indexPath.row%5:indexPath.row];
    cell.colorView.backgroundColor = color;
    cell.colorView2.backgroundColor = color;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.backgroundColor = [UIColor clearColor];
    cell.typeName.text = [currentData objectForKey:@"name"];
    cell.shuzhi.text = [NSString stringWithFormat:@"%@%@",[currentData objectForKey:@"value"],@"%"];
    cell.typeName.textColor = color;
    cell.shuzhi.textColor = color;
    cell.month.text = [currentData objectForKey:@"month"];
    return cell;
}

#pragma mark UITableViewDelegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.navigationController pushViewController:[[ProductListViewController alloc] initWithProductData:datas[indexPath.row]] animated:YES];
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
