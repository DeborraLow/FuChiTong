//
//  GZTreeView+Enums.m
//  FuChiTong
//
//  Created by LJ on 15/4/7.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "GZTreeView+Enums.h"

@implementation GZTreeView (Enums)

+ (UITableViewStyle)tableViewStyleForTreeViewStyle:(GZTreeViewStyle)treeViewStyle
{
    switch (treeViewStyle) {
        case GZTreeViewStylePlain:
            return UITableViewStylePlain;
        case GZTreeViewStyleGrouped:
            return UITableViewStyleGrouped;
    }
    
}


+ (GZTreeViewStyle)treeViewStyleForTableViewStyle:(UITableViewStyle)tableViewStyle
{
    switch (tableViewStyle) {
        case UITableViewStylePlain:
            return GZTreeViewStylePlain;
        case UITableViewStyleGrouped:
            return GZTreeViewStyleGrouped;
    }
}


@end
