//
//  ChooseCardViewController.m
//  FuChiTong
//
//  Created by LJ on 15/4/17.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "ChooseCardViewController.h"
#import "GZCardListView.h"
#import "CardHeadView.h"
#import "CardTableViewCell.h"
#import "PayViewController.h"

#define LIST_OPEN_HEIGHT 264

@interface ChooseCardViewController ()<GZCardListViewDataSource,GZCardListViewDelegate>

@property (nonatomic,strong)GZCardListView * cardListView;

@end

@implementation ChooseCardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"提现";
    
    _cardListView = [[GZCardListView alloc] initWithFrame:CGRectMake(10, 74, 300, 44)];
    _cardListView.delegate = self;
    _cardListView.dataSource = self;
    _cardListView.backgroundColor = [UIColor clearColor];
    _cardListView.headData = @[@""];
    _cardListView.listData = @[@"",@"",@"",@"",@"",@"",@"",@"",@"",@""];
    [self.view addSubview:_cardListView];
    if (iPhone5) {
        [_sureButton setFrame:CGRectMake(_sureButton.frame.origin.x, _sureButton.frame.origin.y + 88, _sureButton.frame.size.width, _sureButton.frame.size.height)];
        _sureLabel.center = _sureButton.center;
    }
    // Do any additional setup after loading the view from its nib.
}


#pragma mark GZCardListViewDataSource
-(CardHeadView*)cardListView:(GZCardListView *)listView cellForHeadRow:(NSInteger)index
{
    CardHeadView * view = (CardHeadView*)[[[NSBundle mainBundle] loadNibNamed:@"CardHeadView" owner:self options:nil]lastObject];
    view.frame = CGRectMake(0, 0, 300, 45);
    view.backgroundColor = [UIColor clearColor];
    return view;
}

-(UITableViewCell*)cardListView:(GZCardListView *)listView tableView:(UITableView *)tableView cellForRowIndex:(NSInteger)index
{
    static NSString * headCellId = @"headCellId2";
    CardTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:headCellId];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"CardTableViewCell" owner:self options:nil] lastObject];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.backgroundColor = [UIColor clearColor];
    return cell;
}


-(CGFloat)cardListView:(GZCardListView *)listView heightForHeadRow:(NSInteger)index
{
    return 44;
}

-(CGFloat)heightForCardListViewRow:(GZCardListView *)listView
{
    return 44;
}

-(NSInteger)cardListView:(GZCardListView *)list numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

#pragma mark GZCardListViewDelegate
-(void)cardListView:(GZCardListView *)listView didSelectedHeadItem:(NSInteger)index isOpen:(BOOL)isOpen
{
    if (!isOpen) {
        [UIView animateWithDuration:0.4 animations:^(void)
         {
             _cardListView.frame = CGRectMake(10, 74, 300, LIST_OPEN_HEIGHT);
             _label.center = CGPointMake(_label.center.x, _label.center.y + LIST_OPEN_HEIGHT - 44);
             _text.center = CGPointMake(_text.center.x, _text.center.y + LIST_OPEN_HEIGHT - 44);

         }];
    }
    else
    {
        [UIView animateWithDuration:0.4 animations:^(void)
         {
             _cardListView.frame = CGRectMake(10, 74, 300, 44);
             _label.center = CGPointMake(_label.center.x, _label.center.y - LIST_OPEN_HEIGHT + 44);
             _text.center = CGPointMake(_text.center.x, _text.center.y - LIST_OPEN_HEIGHT + 44);
         }];
    }
}

-(void)cardListView:(GZCardListView *)listView didSelectedItem:(NSInteger)index atTableView:(UITableView *)tableView isOpen:(BOOL)isOpen
{
    if (!isOpen) {
        [UIView animateWithDuration:0.4 animations:^(void)
         {
             _cardListView.frame = CGRectMake(10, 74, 300, LIST_OPEN_HEIGHT);
             _label.center = CGPointMake(_label.center.x, _label.center.y + LIST_OPEN_HEIGHT - 44);
             _text.center = CGPointMake(_text.center.x, _text.center.y + LIST_OPEN_HEIGHT - 44);
             
         }];
    }
    else
    {
        [UIView animateWithDuration:0.4 animations:^(void)
         {
             _cardListView.frame = CGRectMake(10, 74, 300, 44);
             _label.center = CGPointMake(_label.center.x, _label.center.y - LIST_OPEN_HEIGHT + 44);
             _text.center = CGPointMake(_text.center.x, _text.center.y - LIST_OPEN_HEIGHT + 44);
         }];
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

- (IBAction)sureAction:(id)sender {
    [self.navigationController pushViewController:[PayViewController new] animated:YES];
}
@end
