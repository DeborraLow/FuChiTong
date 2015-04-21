//
//  ProductListViewController.h
//  FuChiTong
//
//  Created by LJ on 15/4/3.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "FuchiViewController.h"

@interface ProductListViewController : FuchiViewController

-(id)initWithProductData:(NSDictionary*)proData;

- (IBAction)kefuAction:(id)sender;
- (IBAction)detailAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *detailButton;

@end
