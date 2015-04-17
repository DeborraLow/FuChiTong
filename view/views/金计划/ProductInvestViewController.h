//
//  ProductInvestViewController.h
//  FuChiTong
//
//  Created by LJ on 15/4/9.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "FuchiViewController.h"

@interface ProductInvestViewController : FuchiViewController
@property (weak, nonatomic) IBOutlet UITextField *txt;
@property (weak, nonatomic) IBOutlet UIButton *touziButton;
- (IBAction)touziAction:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *shouyiLabel;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;


///金计划详情入口
-(id)initWithProductData:(NSDictionary*)data index:(NSInteger)index;


///产品详情入口
-(id)initWithProductData:(NSDictionary *)data;
@end
