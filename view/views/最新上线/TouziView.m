//
//  TouziView.m
//  FuChiTong
//
//  Created by LJ on 15/4/15.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "TouziView.h"

@implementation TouziView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    _customerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_customerButton setTitle:@"联系客服" forState:UIControlStateNormal];
    [_customerButton setTitle:@"联系客服" forState:UIControlStateHighlighted];
    [_customerButton.titleLabel setFont:[UIFont fontWithName:@"HiraginoSansGB-W3" size:14]];
    [_customerButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_customerButton setFrame:CGRectMake(10, 551, 145, 40)];
    _customerButton.tag = 0;
    [_customerButton addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [_customerButton setBackgroundImage:UIIMAGE(@"product_list_button_normal") forState:UIControlStateNormal];
    [_customerButton setBackgroundImage:UIIMAGE(@"product_list_button_highlighted") forState:UIControlStateHighlighted];
    [_customerButton setBackgroundImage:UIIMAGE(@"product_list_button_highlighted") forState:UIControlStateSelected];
    [_customerButton setUserInteractionEnabled:YES];
    [self addSubview:_customerButton];
    
    _detailButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_detailButton setTitle:@"活期详情" forState:UIControlStateNormal];
    [_detailButton setTitle:@"活期详情" forState:UIControlStateHighlighted];
    [_detailButton.titleLabel setFont:[UIFont fontWithName:@"HiraginoSansGB-W3" size:14]];
    [_detailButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_detailButton setFrame:CGRectMake(_customerButton.frame.origin.x + _customerButton.frame.size.width + 10, 551, 145, 40)];
    _detailButton.tag = 1;
    [_detailButton setUserInteractionEnabled:YES];
    [_detailButton addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [_detailButton setBackgroundImage:UIIMAGE(@"product_list_button_normal") forState:UIControlStateNormal];
    [_detailButton setBackgroundImage:UIIMAGE(@"product_list_button_highlighted") forState:UIControlStateHighlighted];
    [_detailButton setBackgroundImage:UIIMAGE(@"product_list_button_highlighted") forState:UIControlStateSelected];
    [self addSubview:_detailButton];
    
}

-(void)buttonAction:(id)sender
{
    if ([_delegate respondsToSelector:@selector(didClickButton:)]) {
        [_delegate didClickButton:[sender tag]];
    }
    
}



- (IBAction)customerAction:(id)sender {
    
}

- (IBAction)detailAction:(id)sender {
    
}
- (IBAction)joinAction:(id)sender {
    if ([_delegate respondsToSelector:@selector(didJoin:)]) {
        [_delegate didJoin:nil];
    }
}
@end
