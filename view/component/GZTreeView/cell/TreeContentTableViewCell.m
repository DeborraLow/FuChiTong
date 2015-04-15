//
//  TreeContentTableViewCell.m
//  FuChiTong
//
//  Created by LJ on 15/4/14.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "TreeContentTableViewCell.h"

@implementation TreeContentTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(CGFloat)calulateHeightWithDesrip:(NSString *)str
{
    CGFloat preMaxWaith =self.content.frame.size.width - 5;
    [self.content setPreferredMaxLayoutWidth:preMaxWaith];
    self.content.numberOfLines = 0;
    [self.content layoutIfNeeded];
    [self.content setText:str];
    [self.contentView layoutIfNeeded];
    CGSize size = [self.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    return size.height + 1.0f;
}

@end
