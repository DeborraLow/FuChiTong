//
//  InvestRecordViewController.m
//  FuChiTong
//
//  Created by LJ on 15/4/16.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "InvestRecordViewController.h"
#import "InvestRecordTableViewCell.h"

@interface InvestRecordViewController ()<UITableViewDataSource,UITableViewDelegate,InvestRecordCellDelegate>


@property (nonatomic,strong)UITableView * tableView;

@end

@implementation InvestRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"投资记录";
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(8, 0, GZContent_Width - 16, GZContent_Height - 64) style:UITableViewStylePlain];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _tableView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:_tableView];
    // Do any additional setup after loading the view from its nib.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellId = @"cellId";
    InvestRecordTableViewCell*cell = (InvestRecordTableViewCell*)[tableView dequeueReusableHeaderFooterViewWithIdentifier:cellId];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"InvestRecordTableViewCell" owner:self options:nil] lastObject];
    }
    cell.delegate = self;
    cell.tag = indexPath.row;
    if(indexPath.row == 2)cell.investButtonType = InvestButtonTypeProduct;
    cell.backgroundColor = [UIColor clearColor];
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 91;
}


#pragma mark InvestRecordTableViewCellDelegate
-(void)investTableViewCell:(InvestRecordTableViewCell *)cell didSelected:(NSInteger)index forItem:(NSDictionary *)item
{
    switch (cell.investButtonType) {
        case InvestButtonTypeInvest:
            
            break;
        case InvestButtonTypeProduct:
            
            break;
            
        default:
            break;
    }
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
