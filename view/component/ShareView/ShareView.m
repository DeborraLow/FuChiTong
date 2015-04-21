//
//  ShareView.m
//  FuChiTong
//
//  Created by LJ on 14/12/2.
//  Copyright (c) 2014年 zwj. All rights reserved.
//

#import "ShareView.h"

@implementation ShareView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (IBAction)shareAction:(id)sender {
    if ([_delegate respondsToSelector:@selector(didShare:)]) {
        [_delegate didShare:[sender tag]];
    }
    
}
@end
