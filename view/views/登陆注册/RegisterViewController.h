//
//  RegisterViewController.h
//  FuChiTong
//
//  Created by LJ on 15/4/3.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "FuchiViewController.h"

@interface RegisterViewController : FuchiViewController
@property (weak, nonatomic) IBOutlet UITextField *phoneTxt;
@property (weak, nonatomic) IBOutlet UITextField *passTxt;
@property (weak, nonatomic) IBOutlet UITextField *passTxt2;
@property (weak, nonatomic) IBOutlet UIButton *getButton;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
- (IBAction)registerAction:(id)sender;
- (IBAction)webAction:(id)sender;

@end
