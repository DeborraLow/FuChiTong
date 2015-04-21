//
//  MessageCenterViewController.m
//  FuChiTong
//
//  Created by LJ on 15/4/20.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "MessageCenterViewController.h"
#import "MessageTableViewCell.h"

@interface MessageCenterViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    NSArray * infos;
}
@end

@implementation MessageCenterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"信息中心";
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.backgroundColor = [UIColor clearColor];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    infos = @[@"ahsdfkjhaskhdf",@"ahsdfkjhaskhdfahsdfkjhaskhdfahsdfkjhaskhdfahsdfkjhaskhdfahsdfkjhaskhdf",@"ahsdfkjhaskhdf",@"ahsdfkjhaskhdf",@"ahsdfkjhaskhdf",@"ahsdfkjhaskhdfahsdfkjhaskhdfahsdfkjhaskhdfahsdfkjhaskhdfahsdfkjhaskhdf"];
    // Do any additional setup after loading the view from its nib.
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellId = @"MessageTableViewCellId";
    NSString * str = infos[indexPath.row];

    MessageTableViewCell*cell = (MessageTableViewCell*)[tableView dequeueReusableCellWithIdentifier:cellId];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"MessageTableViewCell" owner:self options:nil] lastObject];
    }
    cell.info.text = str;
    cell.backgroundColor  = [UIColor clearColor];
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [infos count];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static MessageTableViewCell *cell = nil;
    static dispatch_once_t onceToken;
    NSString * str = infos[indexPath.row];
    //只会走一次
    dispatch_once(&onceToken, ^{
        cell = (MessageTableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"cellId2"];
        if (!cell) {
            cell = [[[NSBundle mainBundle] loadNibNamed:@"MessageTableViewCell" owner:self options:nil] lastObject];
        }
    });
    
    //calculate
    CGFloat height = [cell getHeight:str];
    
    return height;

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
