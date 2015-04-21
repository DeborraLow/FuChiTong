//
//  SettingViewController.m
//  FuChiTong
//
//  Created by LJ on 14/12/2.
//  Copyright (c) 2014年 zwj. All rights reserved.
//

#import "SettingViewController.h"
#import "CTCommonUtils.h"
#import "MessageCenterViewController.h"
#import "HelpCenterViewController.h"

@interface SettingViewController ()

@end

@implementation SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"设置";
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

- (IBAction)buttonAction:(id)sender {
    switch ([sender tag]) {
        case 0:
            [self.navigationController pushViewController:[HelpCenterViewController new] animated:YES];
            break;
            case 1:
            [self.navigationController pushViewController:[MessageCenterViewController new] animated:YES];
            break;
            case 2:
            [CTCommonUtils showAlertViewOnView:[[UIApplication sharedApplication] keyWindow] withText:@"清理缓存成功" alignment:CTCommonUtilsShowTop];
            break;
            case 3:
            
            break;
            
        default:
            break;
    }
}
@end
