//
//  GZTreeNode.h
//  FuChiTong
//
//  Created by LJ on 15/4/7.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import <Foundation/Foundation.h>
@class GZTreeNodeInfo;

typedef enum GZTreeDepthLevel {
    GZTreeDepthLevelNotInitialized
} GZTreeDepthLevel;

@interface GZTreeNode : NSObject
@property (nonatomic, getter = isExpanded, readonly) BOOL expanded;
@property (nonatomic, getter = isVisible, readonly) BOOL visible;
@property (weak, nonatomic) GZTreeNode *parent;
@property (strong, nonatomic) NSArray *children;
@property (strong, nonatomic, readonly) GZTreeNodeInfo *treeNodeInfo;
@property (strong, nonatomic, readonly) id item;
@property (nonatomic) BOOL isContent;

- (id)initWithItem:(id)item parent:(GZTreeNode *)parent expanded:(BOOL)expanded;


-(id)initWithData:(NSDictionary*)data expanded:(BOOL)expanded;

@end
