//
//  TreeHeadTableViewCell.m
//  FuChiTong
//
//  Created by LJ on 15/4/7.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "TreeHeadTableViewCell.h"

@implementation TreeHeadTableViewCell
{
    double duration;
}

- (void)awakeFromNib {
    // Initialization code
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

-(void)openOrClose
{
    duration = 0.4f;
    if (!self.treeInfo.expanded) {
        [UIView animateWithDuration:duration animations:^(void)
         {
             CGAffineTransform transform =CGAffineTransformMakeRotation(M_PI);
             [_arrow setTransform:transform];
         }completion:nil];
    }
    else
    {
        [UIView animateWithDuration:duration animations:^(void)
         {
             CGAffineTransform transform =CGAffineTransformMakeRotation(M_PI*2);
             [_arrow setTransform:transform];
         }completion:nil];
    }
}


-(void)setTextName:(NSString *)text
{
    self.name.text = text;
    
}


@end
