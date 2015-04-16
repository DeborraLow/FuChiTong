//
//  IndividualAccountViewController.m
//  FuChiTong
//
//  Created by LJ on 15/4/16.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "IndividualAccountViewController.h"
#import "InvestRecordViewController.h"

@interface IndividualAccountViewController ()

@end

@implementation IndividualAccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"个人账户";
    [_scrollView setContentSize:CGSizeMake(300, 559)];
    [_scrollView setDelaysContentTouches:NO];
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

- (IBAction)cellAction:(id)sender {
    
}

- (IBAction)tixianAction:(id)sender {
}

- (IBAction)chongzhiAction:(id)sender {
}

- (IBAction)buttonAction:(id)sender {
    switch ([sender tag]) {
        case 0:
            [self.navigationController pushViewController:[InvestRecordViewController new] animated:YES];
            break;
            case 1:
            
            break;
            case 2:
            
            break;
            case 3:
            
            break;
            
        default:
            break;
    }
}

@end
