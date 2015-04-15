//
//  IndexViewController.m
//  FuChiTong
//
//  Created by LJ on 15/4/3.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "IndexViewController.h"
#import "PlanViewController.h"
#import "LoginViewController.h"
#import "CustomerViewController.h"
#import "FinancingViewController.h"
#import "OnlineViewController.h"

@interface IndexViewController ()

@end

@implementation IndexViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"富驰资产";
    _scrollView.frame = CGRectMake(0, 0, GZContent_Width, GZContent_Height+20);
    _scrollView.contentSize  = CGSizeMake(320, 510);
    
    [_button1 setImage:UIIMAGE(@"plan_cell_selected_bg") forState:UIControlStateHighlighted];
    [_button2 setImage:UIIMAGE(@"plan_cell_selected_bg") forState:UIControlStateHighlighted];
    [_button3 setImage:UIIMAGE(@"plan_cell_selected_bg") forState:UIControlStateHighlighted];
    [_button4 setImage:UIIMAGE(@"plan_cell_selected_bg") forState:UIControlStateHighlighted];

    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(0, 0, 50, 50)];
    [button setImage:UIIMAGE(@"person_button_normal") forState:UIControlStateNormal];
    [button setImage:UIIMAGE(@"person_button_highlighted2") forState:UIControlStateHighlighted];
    [button addTarget:self action:@selector(personAction) forControlEvents:UIControlEventTouchUpInside];
    
    ///可加入分类 Category
    UIBarButtonItem *negativeSeperator = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    negativeSeperator.width = -12;
    
    UIBarButtonItem *barbtn=[[UIBarButtonItem alloc]initWithCustomView:button];
    self.navigationItem.rightBarButtonItems = @[negativeSeperator,barbtn];
    
    // Do any additional setup after loading the view from its nib.
}

-(void)personAction
{
    NSLog(@"personaction");
    [self.navigationController pushViewController:[LoginViewController new] animated:YES];
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
            [self.navigationController pushViewController:[PlanViewController new] animated:YES];
            break;
        case 1:
            [self.navigationController pushViewController:[OnlineViewController new] animated:YES];
            break;
        case 2:
            [self.navigationController pushViewController:[FinancingViewController new] animated:YES];
            break;
            case 3:
            [self.navigationController pushViewController:[CustomerViewController new] animated:YES];
            break;
        default:
            break;
    }
}
@end
