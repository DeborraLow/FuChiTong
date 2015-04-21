//
//  HelpTableViewCell.m
//  FuChiTong
//
//  Created by LJ on 15/4/21.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "HelpTableViewCell.h"

@implementation HelpTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    if (selected) {
        self.bgImg.image = UIIMAGE(@"individual_cell_select_bg_highlighted");
    }
    else
    {
        self.bgImg.image = UIIMAGE(@"setting_cell_bg");
    }
    // Configure the view for the selected state
}

@end
