//
//  SanbiaoTableViewCell.m
//  FuChiTong
//
//  Created by LJ on 15/4/15.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "SanbiaoTableViewCell.h"

@implementation SanbiaoTableViewCell

- (void)awakeFromNib {
    // Initialization code
    self.backgroundColor = [UIColor clearColor];
//    self.bgView.layer.cornerRadius = 5;
////    self.bgView.layer.masksToBounds = YES;
//    self.bgView.layer.shadowColor = [[UIColor grayColor] CGColor];
//    self.bgView.layer.shadowRadius = 0.7;
//    self.bgView.layer.shadowOpacity = 0.8;
//    self.bgView.layer.shadowPath = [UIBezierPath bezierPathWithRect:self.bgView.bounds].CGPath;

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

@end
