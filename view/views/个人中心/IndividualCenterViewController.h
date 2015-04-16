//
//  IndividualCenterViewController.h
//  FuChiTong
//
//  Created by LJ on 15/4/16.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "FuchiViewController.h"

@interface IndividualCenterViewController : FuchiViewController
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UIImageView *avatar;
- (IBAction)takePhotoAction:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *todayProfit;
@property (weak, nonatomic) IBOutlet UILabel *keyongyue;
@property (weak, nonatomic) IBOutlet UILabel *daishoujine;
@property (weak, nonatomic) IBOutlet UILabel *leijishouyi;
@property (weak, nonatomic) IBOutlet UILabel *jifen;
@property (weak, nonatomic) IBOutlet UILabel *dangqianshouyi;

- (IBAction)gerenAction:(id)sender;
- (IBAction)anquanAction:(id)sender;
- (IBAction)jifenAction:(id)sender;
- (IBAction)rechargeAction:(id)sender;///充值
- (IBAction)cashAction:(id)sender; ///提现

@end
