//
//  TreeContentTableViewCell.h
//  FuChiTong
//
//  Created by LJ on 15/4/14.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TreeContentTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *content;

-(CGFloat)calulateHeightWithDesrip:(NSString*)str;

@end
