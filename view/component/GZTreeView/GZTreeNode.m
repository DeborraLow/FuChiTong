//
//  GZTreeNode.m
//  FuChiTong
//
//  Created by LJ on 15/4/7.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "GZTreeNode.h"

@interface GZTreeNode ()

@property (nonatomic, getter = isExpanded, readwrite) BOOL expanded;
@property (nonatomic) NSInteger treeDepthLevel;

@property (strong, nonatomic, readwrite) id item;

@property (strong, nonatomic, readwrite) NSArray *descendants;
@property (strong, nonatomic, readwrite) GZTreeNodeInfo *treeNodeInfo;

@end


@implementation GZTreeNode


-(id)initWithItem:(id)item parent:(GZTreeNode *)parent expanded:(BOOL)expanded
{
    self = [super init];
    if (self) {
        self.treeDepthLevel = GZTreeDepthLevelNotInitialized;
        self.item = item;
        self.parent = parent;
        self.expanded = expanded;
        self.children = [NSArray array];
    }
    return self;
}

-(id)initWithData:(NSDictionary *)data expanded:(BOOL)expanded
{
    self = [super init];
    if (self) {
        self.expanded = expanded;
        
    }
    return self;
}


@end
