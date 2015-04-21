//
//  PlanTableViewCell.h
//  FuChiTong
//
//  Created by LJ on 15/4/3.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlanTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *cellBg;
@property (weak, nonatomic) IBOutlet UIView *colorView;
@property (weak, nonatomic) IBOutlet UIView *colorView2;
@property (weak, nonatomic) IBOutlet UILabel *typeName;
@property (weak, nonatomic) IBOutlet UILabel *shuzhi;
@property (weak, nonatomic) IBOutlet UILabel *month;

-(void)setColor:(UIColor*)color;

@end
