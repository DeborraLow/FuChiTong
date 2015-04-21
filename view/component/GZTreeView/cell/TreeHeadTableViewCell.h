//
//  TreeHeadTableViewCell.h
//  FuChiTong
//
//  Created by LJ on 15/4/7.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GZTreeNodeInfo.h"

@interface TreeHeadTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UIImageView *img;
@property (weak, nonatomic) IBOutlet UIImageView *arrow;
@property (nonatomic,strong)GZTreeNodeInfo * treeInfo;
-(void)setTextName:(NSString *)text;

-(void)setNodeInfo:(NSDictionary*)data;


-(void)openOrClose;
@end
