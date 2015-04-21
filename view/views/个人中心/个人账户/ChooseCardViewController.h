//
//  ChooseCardViewController.h
//  FuChiTong
//
//  Created by LJ on 15/4/17.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "FuchiViewController.h"
///提现第二步
@interface ChooseCardViewController : FuchiViewController
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UILabel *text;
@property (weak, nonatomic) IBOutlet UIButton *sureButton;
@property (weak, nonatomic) IBOutlet UILabel *sureLabel;
- (IBAction)sureAction:(id)sender;

@end
