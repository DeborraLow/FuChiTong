//
//  ProductInvestViewController.m
//  FuChiTong
//
//  Created by LJ on 15/4/9.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "ProductInvestViewController.h"
#import "PayViewController.h"

@interface ProductInvestViewController ()
{
    NSDictionary * productData;
    NSString * selectedName;
}

@end

@implementation ProductInvestViewController

-(id)initWithProductData:(NSDictionary*)data index:(NSInteger)index
{
    if (self) {
        productData = data;
        selectedName = [data objectForKey:@"names"][index];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.scrollView setContentSize:CGSizeMake(GZContent_Width, 620)];
    self.title = [NSString stringWithFormat:@"%@%@",[productData objectForKey:@"name"],selectedName];
    self.titleLabel.text = [NSString stringWithFormat:@"%@%@",[productData objectForKey:@"name"],selectedName];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)touziAction:(id)sender {
    [self.navigationController pushViewController:[PayViewController new] animated:YES];
}
@end
