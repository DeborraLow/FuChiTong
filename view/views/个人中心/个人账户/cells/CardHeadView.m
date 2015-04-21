//
//  CardHeadView.m
//  FuChiTong
//
//  Created by LJ on 15/4/20.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "CardHeadView.h"

@implementation CardHeadView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}

-(void)open
{
        [UIView animateWithDuration:0.4 animations:^(void)
         {
             CGAffineTransform transform =CGAffineTransformMakeRotation(M_PI);
             [_arrow setTransform:transform];
         }completion:nil];

}

-(void)close
{
    [UIView animateWithDuration:0.4 animations:^(void)
     {
         CGAffineTransform transform =CGAffineTransformMakeRotation(M_PI*2);
         [_arrow setTransform:transform];
     }completion:nil];

}


@end
