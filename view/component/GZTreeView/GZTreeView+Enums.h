//
//  GZTreeView+Enums.h
//  FuChiTong
//
//  Created by LJ on 15/4/7.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "GZTreeView.h"


@interface GZTreeView (Enums)


//Tree View Style
+ (UITableViewStyle)tableViewStyleForTreeViewStyle:(GZTreeViewStyle)treeViewStyle;

+ (GZTreeViewStyle)treeViewStyleForTableViewStyle:(UITableViewStyle)tableViewStyle;

@end
