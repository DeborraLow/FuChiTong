//
//  GZTreeView.m
//  FuChiTong
//
//  Created by LJ on 15/4/7.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "GZTreeView.h"
#import "GZTreeView+Enums.h"
#import "GZTreeNode.h"
#import "TreeHeadTableViewCell.h"
#import "TreeContentTableViewCell.h"
#import "GZDataUtils.h"
#import "UILabel+Util.h"


@implementation GZTreeView
{
    UITableViewStyle tableStyle;
    NSMutableArray * nodeTreeHeadInfos;
    NSMutableArray * nodeTreeContentInfos;

}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
-(void)insertData:(NSDictionary *)data withAnimation:(BOOL)isAnimation
{
    
}

- (void)drawRect:(CGRect)rect {
    // Drawing code
    UITableView *tableView =  [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height) style:tableStyle];
    tableView.delegate = (id<UITableViewDelegate>)self;
    tableView.dataSource = (id<UITableViewDataSource>)self;
    tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    tableView.backgroundColor = [UIColor clearColor];
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [tableView setShowsVerticalScrollIndicator:YES];
    tableView.backgroundColor = [UIColor clearColor];
    [tableView setShowsVerticalScrollIndicator:NO];
    [self addSubview:tableView];
    self.tableView = tableView;
    
    if(_open)
    {
        NSIndexPath*index = [NSIndexPath indexPathForRow:0 inSection:0];
        TreeHeadTableViewCell*cell = (TreeHeadTableViewCell*)[_tableView cellForRowAtIndexPath:index];
        [cell openOrClose];
        [_tableView beginUpdates];
        GZTreeNodeInfo*node = [GZTreeNodeInfo new];
        node.style = GZTreeViewStyleContent;
        node.content = cell.treeInfo.content;
        [nodeTreeHeadInfos insertObject:node atIndex:1];
        NSIndexPath * indexPath2 = [NSIndexPath indexPathForRow:index.row+1 inSection:index.section];
        [_tableView insertRowsAtIndexPaths:@[indexPath2] withRowAnimation:UITableViewRowAnimationAutomatic];
        [_tableView endUpdates];
        [_tableView scrollToNearestSelectedRowAtScrollPosition:UITableViewScrollPositionMiddle animated:YES];
        cell.treeInfo.expanded = !cell.treeInfo.expanded;
    }
}


-(id)initWithFrame:(CGRect)frame style:(GZTreeViewStyle)style
{
    if (self) {
        
    }
    return self;
}

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInitWithFrame:frame style:GZTreeViewStylePlain];
    }
    return self;
}

-(void)setNodeInfos:(NSArray *)nodeInfos
{
    nodeTreeHeadInfos = [NSMutableArray new];
    nodeTreeContentInfos = [NSMutableArray new];
    
    for (NSDictionary * dic in nodeInfos) {
        if ([dic objectForKey:@"head"]) {
            GZTreeNodeInfo*node = [[GZTreeNodeInfo alloc] initWithData:dic expanded:NO];
            node.style = GZTreeViewStyleHead;
            node.content = [dic objectForKey:@"content"];
            node.text = [dic objectForKey:@"head"];
            [nodeTreeHeadInfos addObject:node];
            GZTreeNodeInfo*contentNode = [[GZTreeNodeInfo alloc] initWithData:dic expanded:NO];
            contentNode.style = GZTreeViewStyleContent;
            node.content = [dic objectForKey:@"content"];
            node.text = [dic objectForKey:@"head"];
            [nodeTreeContentInfos addObject:contentNode];
        }
    }
}

- (void)commonInitWithFrame:(CGRect)frame style:(GZTreeViewStyle)style
{
    tableStyle = [GZTreeView tableViewStyleForTreeViewStyle:style];
}

#pragma mark UITableViewDelegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    TreeHeadTableViewCell*cell = (TreeHeadTableViewCell*)[tableView cellForRowAtIndexPath:indexPath];
    [cell openOrClose];
    if ([_delegate respondsToSelector:@selector(treeView:didSelectedItem:treeNodeInfo:)]) {
        [_delegate treeView:self cellForItem:nil treeNodeInfo:cell.treeInfo];
    }
    if (cell.treeInfo.style == GZTreeViewStyleHead) {
        ///展开
        if (!cell.treeInfo.expanded) {
            [_tableView beginUpdates];
            GZTreeNodeInfo*node = [GZTreeNodeInfo new];
            node.style = GZTreeViewStyleContent;
            node.content = cell.treeInfo.content;
            [nodeTreeHeadInfos insertObject:node atIndex:indexPath.row+1];
            NSIndexPath * indexPath2 = [NSIndexPath indexPathForRow:indexPath.row+1 inSection:indexPath.section];
            [_tableView insertRowsAtIndexPaths:@[indexPath2] withRowAnimation:UITableViewRowAnimationAutomatic];
            [_tableView endUpdates];
            [_tableView scrollToNearestSelectedRowAtScrollPosition:UITableViewScrollPositionMiddle animated:YES];
        }
        else
        {
            [_tableView beginUpdates];
            [nodeTreeHeadInfos removeObject:nodeTreeHeadInfos[indexPath.row + 1]];
            NSIndexPath * indexPath3 = [NSIndexPath indexPathForRow:indexPath.row+1 inSection:indexPath.section];
            [_tableView deleteRowsAtIndexPaths:@[indexPath3] withRowAnimation:UITableViewRowAnimationFade];
            [_tableView endUpdates];
            [_tableView scrollToNearestSelectedRowAtScrollPosition:UITableViewScrollPositionBottom animated:YES];

        }
        cell.treeInfo.expanded = !cell.treeInfo.expanded;
    }
}


#pragma UITableViewDataSource
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    GZTreeNodeInfo*currentInfo = nodeTreeHeadInfos[indexPath.row];
    static NSString *cellId = @"cellId";
    static NSString *cellId2 = @"cellId2";
    if (currentInfo.style == GZTreeViewStyleHead) {
        TreeHeadTableViewCell*cell = [tableView dequeueReusableCellWithIdentifier:cellId];
        if (!cell) {
            cell = [[[NSBundle mainBundle] loadNibNamed:@"TreeHeadTableViewCell" owner:self options:nil] lastObject];
        }
        
        cell.backgroundColor = [UIColor clearColor];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.name.text = currentInfo.text;
        cell.treeInfo = currentInfo;
        if (!cell.treeInfo.expanded) {
            CGAffineTransform transform =CGAffineTransformMakeRotation(M_PI*2);
            cell.arrow.transform = transform;
        }
        else
        {
            CGAffineTransform transform =CGAffineTransformMakeRotation(M_PI);
            cell.arrow.transform = transform;
        }
        cell.tag = indexPath.row;
        return cell;
    }
    else
    {
        TreeContentTableViewCell*cell = [tableView dequeueReusableCellWithIdentifier:cellId2];
        if (!cell) {
            cell = [[[NSBundle mainBundle] loadNibNamed:@"TreeContentTableViewCell" owner:self options:nil] lastObject];
        }
        cell.userInteractionEnabled = NO;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        [cell.content setText:currentInfo.content];
        cell.content.numberOfLines = 0;
        return cell;
    }
    
    return nil;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    GZTreeNodeInfo*currentInfo = nodeTreeHeadInfos[indexPath.row];
    if (currentInfo.style == GZTreeViewStyleContent) {
        static TreeContentTableViewCell *cell = nil;
        static dispatch_once_t onceToken;
        //只会走一次
        dispatch_once(&onceToken, ^{
            cell = (TreeContentTableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"cellId2"];
            if (!cell) {
                cell = [[[NSBundle mainBundle] loadNibNamed:@"TreeContentTableViewCell" owner:self options:nil] lastObject];
            }
        });
        
        //calculate
        CGFloat height = [cell calulateHeightWithDesrip:currentInfo.content];
        
        return height;
    }
    else
    {
        return 54;
    }
    return 54;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [nodeTreeHeadInfos count];
}

#pragma mark Configuring a Tree View
- (NSInteger)numberOfRows
{
    return [self.tableView numberOfRowsInSection:0];
}

-(GZTreeViewStyle)style
{
    UITableViewStyle tableViewStyle = self.tableView.style;
    return [GZTreeView treeViewStyleForTableViewStyle:tableViewStyle];
}

@end
