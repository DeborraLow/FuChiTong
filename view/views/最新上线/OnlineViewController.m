//
//  OnlineViewController.m
//  FuChiTong
//
//  Created by LJ on 15/4/15.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "OnlineViewController.h"
#import "SanbiaoView.h"
#import "TouziView.h"
#import "SIAlertView.h"
#import "CurrentViewController.h"
#import "JoinViewController.h"
#import "BidViewController.h"

@interface OnlineViewController ()<TouziViewDelegate,SanbiaoViewDelegate>
{
    BOOL isSelectedOne;
    UIView * contentView;
}
@property(nonatomic,retain)UIButton * sanbiaoButton;
@property(nonatomic,retain)UIButton * touziButton;

@end

@implementation OnlineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"最新上线";
    isSelectedOne = YES;
    _sanbiaoButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_sanbiaoButton setFrame:CGRectMake(10, 10, 145, 45)];
    [_sanbiaoButton setTitle:@"散标" forState:UIControlStateNormal];
    [_sanbiaoButton setBackgroundImage:UIIMAGE(@"online_tab_button_selected") forState:UIControlStateSelected];
    [_sanbiaoButton setBackgroundImage:UIIMAGE(@"online_tab_button_normal") forState:UIControlStateHighlighted];
    [_sanbiaoButton setBackgroundImage:UIIMAGE(@"online_tab_button_normal") forState:UIControlStateNormal];
    [_sanbiaoButton setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [_sanbiaoButton setTitleColor:[UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:0.5] forState:UIControlStateNormal];
    _sanbiaoButton.tag = 0;
    [_sanbiaoButton addTarget:self action:@selector(tabAction:) forControlEvents:UIControlEventTouchUpInside];
    [_sanbiaoButton setTintColor:[UIColor clearColor]];
    
    _touziButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_touziButton setFrame:CGRectMake(_sanbiaoButton.frame.origin.x + _sanbiaoButton.frame.size.width + 10, 10, 145, 45)];
    [_touziButton setTitle:@"活期投资" forState:UIControlStateNormal];
    [_touziButton setBackgroundImage:UIIMAGE(@"online_tab_button_selected") forState:UIControlStateSelected];
    [_touziButton setBackgroundImage:UIIMAGE(@"online_tab_button_normal") forState:UIControlStateHighlighted];
    [_touziButton setBackgroundImage:UIIMAGE(@"online_tab_button_normal") forState:UIControlStateNormal];
//    [_touziButton setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    _touziButton.tag = 1;
    [_touziButton addTarget:self action:@selector(tabAction:) forControlEvents:UIControlEventTouchUpInside];
    [_touziButton setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [_touziButton setTitleColor:[UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:0.5] forState:UIControlStateNormal];
    [_touziButton setTintColor:[UIColor clearColor]];
    
    
    [_sanbiaoButton setSelected:YES];
    _sanbiaoButton.userInteractionEnabled = NO;
    
    [_scrollView addSubview:_sanbiaoButton];
    [_scrollView addSubview:_touziButton];
    
    
    
    
    
    
    [self showContentView:0];
    _scrollView.userInteractionEnabled = YES;
    _scrollView.exclusiveTouch = YES;
    [_scrollView setDelaysContentTouches:YES];
    _scrollView.canCancelContentTouches = NO;
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

- (void)tabAction:(id)sender {
    if (isSelectedOne) {
        [_sanbiaoButton setSelected:NO];
        [_sanbiaoButton setUserInteractionEnabled:YES];
        [_touziButton setSelected:YES];
        [_touziButton setUserInteractionEnabled:NO];
    }
    else
    {
        [_touziButton setSelected:NO];
        [_touziButton setUserInteractionEnabled:YES];
        [_sanbiaoButton setSelected:YES];
        [_sanbiaoButton setUserInteractionEnabled:NO];
    }
    isSelectedOne = !isSelectedOne;
    
    [self showContentView:[sender tag]];
}

#pragma mark TouziViewDelegate
-(void)didClickButton:(NSInteger)index
{
    NSLog(@"clicked");
    switch (index) {
        case 0:
        {
            SIAlertView *alertView = [[SIAlertView alloc] initWithTitle:nil andMessage:@"富驰资产客服:400-6582-886"];
            [alertView addButtonWithTitle:@"拨打"
                                     type:SIAlertViewButtonTypeDefault
                                  handler:^(SIAlertView *alertView) {
                                      NSLog(@"Default Clicked");
                                  }];
            [alertView addButtonWithTitle:@"取消"
                                     type:SIAlertViewButtonTypeCancel
                                  handler:^(SIAlertView *alertView) {
                                      NSLog(@"Cancel Clicked");
                                  }];
            alertView.transitionStyle = SIAlertViewTransitionStyleBounce;
            [alertView show];
        }
            break;
            case 1:
        {
            [self.navigationController pushViewController:[CurrentViewController new] animated:YES];
        }
            break;
            
        default:
            break;
    }
}

-(void)didJoin:(NSDictionary *)data
{
    [self.navigationController pushViewController:[JoinViewController new] animated:YES];
}


#pragma mark SanbiaoViewDelegate
-(void)sanbiaoView:(SanbiaoView *)view selectedIndexPath:(NSIndexPath *)indexPath
{
    [self.navigationController pushViewController:[BidViewController new] animated:YES];

}

///显示散标和活期投资界面
-(void)showContentView:(NSInteger)type
{
    if (contentView) {
        [contentView removeFromSuperview];
    }
    if (type == 0) {
        SanbiaoView*view = [[[NSBundle mainBundle] loadNibNamed:@"SanbiaoView" owner:nil options:nil] lastObject];
        [view setFrame:CGRectMake(0, 70, view.frame.size.width, self.view.frame.size.height)];
        view.backgroundColor = [UIColor clearColor];
        view.delegate = self;
        [_scrollView addSubview:view];
        contentView = view;
        _scrollView.scrollEnabled = NO;
        [_scrollView setContentSize:CGSizeMake(100, GZContent_Height)];
    }
    else
    {
        TouziView*view = [[[NSBundle mainBundle] loadNibNamed:@"TouziView" owner:nil options:nil] lastObject];
        [view setFrame:CGRectMake(0, 0, view.frame.size.width, self.view.frame.size.height)];
        view.backgroundColor = [UIColor clearColor];
        view.delegate = self;
        [_scrollView insertSubview:view atIndex:0];
        _scrollView.scrollEnabled = YES;
        contentView = view;
        [_scrollView setContentSize:CGSizeMake(100, 600)];
    }
    
    
    
    
    
}


@end
