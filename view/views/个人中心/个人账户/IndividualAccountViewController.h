//
//  IndividualAccountViewController.h
//  FuChiTong
//
//  Created by LJ on 15/4/16.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "FuchiViewController.h"

@interface IndividualAccountViewController : FuchiViewController
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
- (IBAction)cellAction:(id)sender;
- (IBAction)tixianAction:(id)sender;
- (IBAction)chongzhiAction:(id)sender;

- (IBAction)buttonAction:(id)sender;
@end
