//
//  ChoosePayViewController.m
//  FuChiTong
//
//  Created by LJ on 14/12/2.
//  Copyright (c) 2014年 zwj. All rights reserved.
//

#import "ChoosePayViewController.h"
#import "ChoosePayCell.h"

@interface ChoosePayViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    NSArray * infos;
}

@end

@implementation ChoosePayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    infos = @[@{@"name":@"微信支付",@"info":@"推荐已安装微信的用户使用",@"img":@"wechat"},@{@"name":@"银联支付",@"info":@"不支持信用卡支付",@"img":@"yinlian"}];
    self.title = @"充值";
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.bounces = NO;
    // Do any additional setup after loading the view from its nib.
}

#pragma mark UITableViewDataSource
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellId = @"ChoosePayCell";
    NSDictionary * currentData = infos[indexPath.row];
    
    ChoosePayCell*cell = (ChoosePayCell*)[tableView dequeueReusableCellWithIdentifier:cellId];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"ChoosePayCell" owner:self options:nil] lastObject];
    }
    cell.name.text = [currentData objectForKey:@"name"];
    cell.info.text = [currentData objectForKey:@"info"];
    cell.img.image = UIIMAGE([currentData objectForKey:@"img"]);
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 75;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [infos count];
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
