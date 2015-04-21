//
//  GZCardView.m
//  FuChiTong
//
//  Created by LJ on 15/4/17.
//  Copyright (c) 2015年 zwj. All rights reserved.
//


#define zMAX_ROW_COUNT 5

#import "GZCardListView.h"


@interface GZCardListView()
{
    NSMutableArray * indexpaths;
    CardHeadView * head;
}

@property (nonatomic,assign)UITableView * tableView;

@property (nonatomic)BOOL isOpen;

@end


@implementation GZCardListView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [self initCommit];
}


-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    
    return self;
}


-(void)initCommit
{
    head = [_dataSource cardListView:self cellForHeadRow:0];
    UITapGestureRecognizer*gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGesture:)];
    [head addGestureRecognizer:gesture];
    [self addSubview:head];
    CGFloat height = [_dataSource heightForCardListViewRow:self] * zMAX_ROW_COUNT;
    UITableView*tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, head.frame.size.height, 300, height)];
    tableView.dataSource = self;
    tableView.delegate = self;
    tableView.bounces = NO;
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    tableView.backgroundColor = [UIColor clearColor];
    [tableView setShowsVerticalScrollIndicator:NO];
    [self addSubview:tableView];
    self.tableView = tableView;
}

-(void)tapGesture:(UITapGestureRecognizer*)gesture
{
    if ([_delegate respondsToSelector:@selector(cardListView:didSelectedHeadItem:isOpen:)]) {
        [_delegate cardListView:self didSelectedHeadItem:0 isOpen:_isOpen];
        if(!_isOpen) [self open] ;
        else [self close];
    }
}


#pragma mark UITableViewDataSource
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [_dataSource heightForCardListViewRow:self];
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([_dataSource cardListView:self tableView:tableView cellForRowIndex:0]) {
        return [_dataSource cardListView:self tableView:tableView cellForRowIndex:0];
    }
    return nil;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (_isOpen) {
       return  [_listData count];
    }
    return 0;
}

#pragma mark UITableViewDelegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([_delegate respondsToSelector:@selector(cardListView:didSelectedItem:atTableView:isOpen:)]) {
        //做了延迟处理，为了让cell的点击效果凸现出来
        sleep(0.3);
        [_delegate cardListView:self didSelectedItem:indexPath.row atTableView:tableView isOpen:_isOpen];
    }
    [self close];
}


#pragma mark Private Methods
-(void)open
{
    NSLog(@"open");
    [head open];
    indexpaths = [NSMutableArray new];
    [_tableView beginUpdates];
    _isOpen = YES;
    for (int i = 0; i < [_listData count]; i++) {
        NSIndexPath * path = [NSIndexPath indexPathForRow:i inSection:0];
        [indexpaths addObject:path];
    }
    [_tableView insertRowsAtIndexPaths:indexpaths withRowAnimation:UITableViewRowAnimationAutomatic];
    [_tableView endUpdates];
    _tableView.frame = CGRectMake(0, 44, 300, 220);
    NSLog(@"%f",_tableView.frame.size.height);
    
}

-(void)close
{
    NSLog(@"close");
    [head close];
    _isOpen = NO;
    [self performSelector:@selector(delayClose) withObject:nil afterDelay:0.1];
    
}

-(void)delayClose
{
    [_tableView beginUpdates];
    [_tableView deleteRowsAtIndexPaths:indexpaths withRowAnimation:UITableViewRowAnimationAutomatic];
    [_tableView endUpdates];
    [UIView animateWithDuration:0.5 animations:^(void)
     {
         _tableView.frame = CGRectMake(0, 44, 300, 0);
     }];
}


@end
