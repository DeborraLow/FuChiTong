//
//  GZTreeNodeInfo.m
//  FuChiTong
//
//  Created by LJ on 15/4/7.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "GZTreeNodeInfo.h"

@interface GZTreeNodeInfo ()


@property (nonatomic, readwrite) NSInteger treeDepthLevel;

@property (nonatomic, readwrite) NSInteger siblingsNumber;
@property (nonatomic, readwrite) NSInteger positionInSiblings;


@property (strong, nonatomic, readwrite) id item;

@end
@implementation GZTreeNodeInfo

#pragma mark Properties
-(id)initWithData:(NSDictionary*)data expanded:(BOOL)expanded
{
    if (self) {
        self.expanded = expanded;
        self.content = [data objectForKey:@"content"];
        self.text = [data objectForKey:@"head"];
    }
    return self;
}

@end
