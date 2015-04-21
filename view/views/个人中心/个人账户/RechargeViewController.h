//
//  RechargeViewController.h
//  FuChiTong
//
//  Created by LJ on 15/4/17.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "FuchiViewController.h"
#import <BKCurrencyTextField.h>
///充值界面
@interface RechargeViewController : FuchiViewController
@property (weak, nonatomic) IBOutlet BKCurrencyTextField *text;
- (IBAction)chongzhiAction:(id)sender;

@end
