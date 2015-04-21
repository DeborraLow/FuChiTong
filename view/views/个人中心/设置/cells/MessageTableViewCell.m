//
//  MessageTableViewCell.m
//  FuChiTong
//
//  Created by LJ on 15/4/20.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "MessageTableViewCell.h"

@implementation MessageTableViewCell

- (void)awakeFromNib {
    // Initialization code
    self.content.layer.cornerRadius = 5;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(CGFloat)getHeight:(NSString *)info
{
    CGFloat preMaxWaith = 284;
    self.backgroundColor = [UIColor clearColor];
    [self.info setPreferredMaxLayoutWidth:preMaxWaith];
    self.info.numberOfLines = 0;
    [self.info layoutIfNeeded];
    [self.info setText:info];
    [self.contentView layoutIfNeeded];
    CGSize size = [self.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    
    return size.height + 1.0f;
}

@end
