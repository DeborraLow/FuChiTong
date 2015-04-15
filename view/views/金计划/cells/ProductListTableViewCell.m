//
//  ProductListTableViewCell.m
//  FuChiTong
//
//  Created by LJ on 15/4/3.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "ProductListTableViewCell.h"

@implementation ProductListTableViewCell

- (void)awakeFromNib {
    // Initialization code
    _joinButton.layer.cornerRadius = 5;
    _joinButton.layer.masksToBounds = YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

- (IBAction)joinAction:(id)sender {
    if ([_delegate respondsToSelector:@selector(didJoin:)]) {
        NSLog(@"didjoin%li",(long)self.tag);
        [_delegate didJoin:self.tag];
    }
}

-(void)setColor:(UIColor *)color
{
    [_joinButton setBackgroundColor:color];
    [_colorView setBackgroundColor:color];
}
@end
