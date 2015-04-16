//
//  BidViewController.h
//  FuChiTong
//
//  Created by LJ on 15/4/16.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "FuchiViewController.h"

@interface BidViewController : FuchiViewController
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIButton *detailButton;
- (IBAction)detailAction:(id)sender;
- (IBAction)investAction:(id)sender;

@end
