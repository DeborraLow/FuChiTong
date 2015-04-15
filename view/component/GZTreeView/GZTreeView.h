//
//  GZTreeView.h
//  FuChiTong
//
//  Created by LJ on 15/4/7.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GZTreeNodeInfo.h"
#import "GZTreeNodeCollectionController.h"

@class GZTreeView;

typedef enum {
    GZTreeViewStylePlain = 0,
    GZTreeViewStyleGrouped
} GZTreeViewStyle;

typedef enum {
    ///自适应文本高度
    GZTreeViewCellStyleAdaptive=0,
    ///常态
    GZTreeViewCellStyleDefault
    
} GZTreeViewCellStyle;

@protocol GZTreeViewDelegate <NSObject>

-(void)treeView:(GZTreeView*)treeView cellForItem:(id)item treeNodeInfo:(GZTreeNodeInfo*)info;

///展开列表
-(void)treeView:(GZTreeView *)treeView didUnfoldCell:(UITableViewCell*)cell atIndexPath:(NSIndexPath*)indexPath forHeight:(CGFloat)height;

///合拢列表
-(void)treeView:(GZTreeView *)treeView didCloseCell:(UITableViewCell*)cell atIndexPath:(NSIndexPath*)indexPath forHeight:(CGFloat)height;

@end

@protocol GZTreeViewDataSource <NSObject>

///row的高度
-(CGFloat)rowHeight:(GZTreeView*)treeView cellForItem:(id)item treeNodeInfo:(GZTreeNodeInfo*)info;

///自定义Cell
-(UITableViewCell*)treeView:(GZTreeView*)treeView didSelectedItem:(id)item treeNodeInfo:(GZTreeNodeInfo*)info;


-(NSInteger)numberOfRowsInTreeView:(GZTreeView*)treeView;



@end

@interface GZTreeView : UIView<UITableViewDataSource,UITableViewDelegate>

-(id)initWithFrame:(CGRect)frame style:(GZTreeViewStyle)style;

@property (nonatomic,strong)UITableView * tableView;
@property (nonatomic, readonly)GZTreeViewStyle style;
@property (nonatomic)GZTreeViewCellStyle cellStyle;
@property (nonatomic,strong)UIView * headBgView;
@property (nonatomic,strong)UIView * contentBgView;
@property (nonatomic,strong)NSArray * nodeInfos;///数据
@property (nonatomic)BOOL open;
@property (nonatomic)BOOL scrollEnabled;//是否可以滑动
@property (strong, nonatomic)GZTreeNodeCollectionController *treeNodeCollectionController;

@property (nonatomic,strong)id<GZTreeViewDelegate>delegate;

-(void)insertData:(NSDictionary*)data withAnimation:(BOOL)isAnimation;


@end
