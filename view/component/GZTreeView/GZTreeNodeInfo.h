//
//  GZTreeNodeInfo.h
//  FuChiTong
//
//  Created by LJ on 15/4/7.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    GZTreeViewStyleHead = 0,
    GZTreeViewStyleContent
} GZTreeNodeStyle;

@class GZTreeNode;
@interface GZTreeNodeInfo : NSObject

@property (nonatomic) BOOL expanded;
@property (nonatomic, readonly) NSInteger treeDepthLevel;

@property (nonatomic, readonly) NSInteger siblingsNumber;
@property (nonatomic, readonly) NSInteger positionInSiblings;
@property (nonatomic,strong)NSString * text;
@property (nonatomic,strong)NSString * content;

@property (nonatomic)GZTreeNodeStyle style;
@property (strong, nonatomic, readonly) GZTreeNodeInfo *nodeInfo;
@property (strong, nonatomic, readonly) NSArray *children;

@property (strong, nonatomic, readonly) id item;
@property (nonatomic)BOOL isContent;

-(id)initWithData:(NSDictionary*)data expanded:(BOOL)expanded;

@end
