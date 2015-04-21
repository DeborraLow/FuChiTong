//
//  CardTableViewCell.m
//  FuChiTong
//
//  Created by LJ on 15/4/19.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "CardTableViewCell.h"

@implementation CardTableViewCell

- (void)awakeFromNib {
    // Initialization code
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    if (selected) {
        _bgImg.image = UIIMAGE(@"individual_bank_cell_selected");
    }
    else
    {
        _bgImg.image = UIIMAGE(@"feedback_text_bg");
    }
    // Configure the view for the selected state
}

@end
