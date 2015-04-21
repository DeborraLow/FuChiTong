//
//  ChoosePayCell.m
//  FuChiTong
//
//  Created by LJ on 14/12/2.
//  Copyright (c) 2014年 zwj. All rights reserved.
//

#import "ChoosePayCell.h"

@interface ChoosePayCell()

@property (nonatomic)BOOL isChecked;

@end

@implementation ChoosePayCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    if (selected) {
        self.check.image = UIIMAGE(@"individual_checked");
    }
    else
    {
        self.check.image = UIIMAGE(@"individual_pay_unchecked");
    }
    // Configure the view for the selected state
}

@end
