//
//  ExtractionViewController.h
//  FuChiTong
//
//  Created by LJ on 15/4/17.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "FuchiViewController.h"
#import <BKCurrencyTextField.h>
///提取界面
@interface ExtractionViewController : FuchiViewController
@property (weak, nonatomic) IBOutlet BKCurrencyTextField *text;

- (IBAction)nextAction:(id)sender;
@end
