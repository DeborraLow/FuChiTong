//
//  InvestRecordTableViewCell.m
//  FuChiTong
//
//  Created by LJ on 15/4/16.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "InvestRecordTableViewCell.h"

@implementation InvestRecordTableViewCell

- (void)awakeFromNib {
    // Initialization code
    if (_investButtonType == InvestButtonTypeProduct) {
       self.text.text = @"恭喜加入活期投资A";
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)buttonAction:(id)sender {
    switch ([sender tag]) {
        case 0:
            if ([_delegate respondsToSelector:@selector(investTableViewCell:didSelected:forItem:)]) {
                [_delegate investTableViewCell:self didSelected:self.tag forItem:nil];
            }
            break;
            case 1:
            if ([_delegate respondsToSelector:@selector(investTableViewCell:didQuiteIndex:forItem:)]) {
                [_delegate investTableViewCell:self didQuiteIndex:self.tag forItem:nil];
            }
            break;
            
        default:
            break;
    }
    
}
@end
