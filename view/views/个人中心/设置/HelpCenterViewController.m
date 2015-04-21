//
//  QuestionCenterViewController.m
//  FuChiTong
//
//  Created by LJ on 14/9/19.
//  Copyright (c) 2014年 zwj. All rights reserved.
//

#import "HelpCenterViewController.h"
#import "HelpTableViewCell.h"

@interface HelpCenterViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    NSArray * helps;
}

@end

@implementation HelpCenterViewController

-(void)viewDidAppear:(BOOL)animated
{
    [_tableView deselectRowAtIndexPath:[_tableView indexPathForSelectedRow] animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    helps = @[@"新手指引",@"资费说明",@"登录/注册",@"充值/提现",@"投资/交易记录"];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    _tableView.backgroundColor = [UIColor clearColor];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _tableView.bounces = NO;
    // Do any additional setup after loading the view from its nib.
}


#pragma mark UITableViewDataSource
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellId = @"HelpTableViewCellId";
    HelpTableViewCell*cell = (HelpTableViewCell*)[tableView dequeueReusableHeaderFooterViewWithIdentifier:cellId];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"HelpTableViewCell" owner:self options:nil] lastObject];
    }
    cell.backgroundColor = [UIColor clearColor];
    cell.name.text = helps[indexPath.row];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 54;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [helps count];
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
