//
//  IndividualAccountViewController.m
//  FuChiTong
//
//  Created by LJ on 15/4/16.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "IndividualAccountViewController.h"
#import "InvestRecordViewController.h"
#import "HistoryRecordsViewController.h"
#import "RechargeViewController.h"
#import "ExtractionViewController.h"
#import "ShareView.h"
#import "GZAnimationController.h"
#import "GZMessUtils.h"

@interface IndividualAccountViewController ()<ShareViewDelegate,GZMessUtilsDelegate>
{
    ShareView*shareView;
}

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
    [self.navigationController pushViewController:[ExtractionViewController new] animated:YES];
}

- (IBAction)chongzhiAction:(id)sender {
    [self.navigationController pushViewController:[RechargeViewController new] animated:YES];
}

- (IBAction)buttonAction:(id)sender {
    switch ([sender tag]) {
        case 0:
            [self.navigationController pushViewController:[InvestRecordViewController new] animated:YES];
            break;
            case 1:
            [self.navigationController pushViewController:[HistoryRecordsViewController new] animated:YES];
            break;
            case 2:
            
            break;
            case 3:
        {
            shareView = [[[NSBundle mainBundle] loadNibNamed:@"ShareView" owner:self options:nil] lastObject];
            shareView.delegate = self;
            shareView.frame = CGRectMake(0, 0, 250, 190);
            shareView.backgroundColor = [UIColor clearColor];
            shareView.center = self.view.center;
            [[GZMessUtils sharedUtils] showDarkMask:[[UIApplication sharedApplication] keyWindow] delegate:self];
            [[[UIApplication sharedApplication] keyWindow] addSubview:shareView];
            [GZAnimationController showAlertView:shareView withAnimation:YES];
        }
            
            break;
            
        default:
            break;
    }
}


#pragma mark ShareViewDelegate
-(void)didShare:(NSInteger)index
{
    switch (index) {
        case 0:
            
            break;
            
        default:
            break;
    }
    [shareView removeFromSuperview];
    [[GZMessUtils sharedUtils] removeDarkMask];
}

@end
