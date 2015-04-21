//
//  GZCardView.h
//  FuChiTong
//
//  Created by LJ on 15/4/17.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CardHeadView.h"

@protocol GZCardListViewDelegate;
@protocol GZCardListViewDataSource;


@interface GZCardListView : UIView<UITableViewDataSource,UITableViewDelegate>


@property (nonatomic,strong)id<GZCardListViewDelegate>delegate;
@property (nonatomic,strong)id<GZCardListViewDataSource>dataSource;

@property (nonatomic,strong)NSArray * headData;
@property (nonatomic,strong)NSArray * listData;


-(id)initWithFrame:(CGRect)frame;

@end

@protocol GZCardListViewDataSource <NSObject>

///下拉菜单首项的高度
-(CGFloat)cardListView:(GZCardListView*)listView heightForHeadRow:(NSInteger)index;

///下拉菜单其他项的高度
-(CGFloat)heightForCardListViewRow:(GZCardListView*)listView;

//首项样式
-(CardHeadView*)cardListView:(GZCardListView*)listView  cellForHeadRow:(NSInteger)index;
///其他项样式
-(UITableViewCell*)cardListView:(GZCardListView *)listView tableView:(UITableView*)tableView cellForRowIndex:(NSInteger)index;
///其他项数据长度
-(NSInteger)cardListView:(GZCardListView*)list numberOfRowsInSection:(NSInteger)section;
@end


@protocol GZCardListViewDelegate <NSObject>

//选中首项
-(void)cardListView:(GZCardListView*)listView didSelectedHeadItem:(NSInteger)index isOpen:(BOOL)isOpen;

-(void)cardListView:(GZCardListView*)listView didSelectedItem:(NSInteger)index atTableView:(UITableView*)tableView isOpen:(BOOL)isOpen;


@end