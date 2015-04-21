//
//  PlanTableViewCell.m
//  FuChiTong
//
//  Created by LJ on 15/4/3.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "PlanTableViewCell.h"

@implementation PlanTableViewCell

- (void)awakeFromNib {
    // Initialization code
    _colorView.layer.cornerRadius = 5;
    _colorView.layer.masksToBounds = YES;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    if (selected) {
        _cellBg.image = UIIMAGE(@"plan_cell_selected_bg");
    }
    else
    {
        _cellBg.image = UIIMAGE(@"plan_cell_bg");
    }
    // Configure the view for the selected state
}

-(void)setColor:(UIColor *)color
{
    [_colorView setBackgroundColor:color];
    [_colorView2 setBackgroundColor:color];
}

@end
