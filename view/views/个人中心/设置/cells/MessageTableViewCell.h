//
//  MessageTableViewCell.h
//  FuChiTong
//
//  Created by LJ on 15/4/20.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MessageTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *info;
@property (weak, nonatomic) IBOutlet UIView *content;

-(CGFloat)getHeight:(NSString*)info;

@end
