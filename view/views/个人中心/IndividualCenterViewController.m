//
//  IndividualCenterViewController.m
//  FuChiTong
//
//  Created by LJ on 15/4/16.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "IndividualCenterViewController.h"
#import "GZAnimationController.h"
#import "GZSystemModelUtils.h"
#import "IndividualAccountViewController.h"


@interface IndividualCenterViewController ()<UINavigationControllerDelegate,UIImagePickerControllerDelegate,UIPickerViewDataSource>
{
    UIView * photoAlertView;
}

@end

@implementation IndividualCenterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"个人中心";
    [self.scrollView setContentSize:CGSizeMake(320, 563)];
    [_scrollView setDelaysContentTouches:NO];
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(0, 0, 50, 50)];
    [button setImage:UIIMAGE(@"individual_setting_button_normal") forState:UIControlStateNormal];
    [button setImage:UIIMAGE(@"individual_setting_button_highlighted") forState:UIControlStateHighlighted];
    [button addTarget:self action:@selector(settingAction) forControlEvents:UIControlEventTouchUpInside];
    
    ///可加入分类 Category
    UIBarButtonItem *negativeSeperator = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    negativeSeperator.width = -12;
    
    UIBarButtonItem *barbtn=[[UIBarButtonItem alloc]initWithCustomView:button];
    self.navigationItem.rightBarButtonItems = @[negativeSeperator,barbtn];
    // Do any additional setup after loading the view from its nib.
}


-(void)settingAction
{
    
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

- (IBAction)takePhotoAction:(id)sender {
    photoAlertView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 280, 160)];
    photoAlertView.backgroundColor = [UIColor clearColor];
    
    UIImageView*alertbg = [[UIImageView alloc] initWithFrame:photoAlertView.frame];
    alertbg.image = UIIMAGE(@"individual_alert_bg");
    alertbg.userInteractionEnabled = NO;
    [photoAlertView addSubview:alertbg];
    
    UIButton*photo = [UIButton buttonWithType:UIButtonTypeCustom];
    [photo setFrame:CGRectMake(40, 10, 200, 40)];
    photo.tag = 0;
    [photo setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [photo setTitle:@"拍照" forState:UIControlStateNormal];
    [photo setBackgroundImage:UIIMAGE(@"individual_alert_button_normal") forState:UIControlStateNormal];
    [photo addTarget:self action:@selector(photoAction:) forControlEvents:UIControlEventTouchUpInside];
    [photoAlertView addSubview:photo];
    
    UIButton * takePhoto = [UIButton buttonWithType:UIButtonTypeCustom];
    [takePhoto setFrame:CGRectMake(40, 60, 200, 40)];
    [takePhoto setBackgroundImage:UIIMAGE(@"individual_alert_button_normal") forState:UIControlStateNormal];
    [takePhoto setTitle:@"从相册中选取" forState:UIControlStateNormal];
    [takePhoto setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [takePhoto addTarget:self action:@selector(photoAction:) forControlEvents:UIControlEventTouchUpInside];
    takePhoto.tag = 1;
    [photoAlertView addSubview:takePhoto];
    
    UIButton * cancel = [UIButton buttonWithType:UIButtonTypeCustom];
    [cancel setFrame:CGRectMake(40, 110, 200, 40)];
    [cancel setBackgroundImage:UIIMAGE(@"individual_alert_calcel_button_normal") forState:UIControlStateNormal];
    [cancel setTitle:@"取消" forState:UIControlStateNormal];
    [cancel setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [cancel addTarget:self action:@selector(photoAction:) forControlEvents:UIControlEventTouchUpInside];
    cancel.tag = 2;
    [photoAlertView addSubview:cancel];
    
    CGFloat x = self.view.center.x ;
    CGFloat y = self.view.center.y;
    photoAlertView.center = CGPointMake(x,y);
    [self.view addSubview:photoAlertView];
    
    [GZAnimationController showAlertView:photoAlertView withAnimation:YES];
}

-(void)photoAction:(id)sender
{
    switch ([sender tag]) {
        case 0:
            [GZSystemModelUtils takePhotoWithVC:self withDelegate:self];
            break;
            case 1:
            [GZSystemModelUtils LocalPhotoWithVC:self delegate:self];

            break;
            case 2:
            [photoAlertView removeFromSuperview];
            break;
            
        default:
            break;
    }
}

#pragma UIImagePickerControllerDelegate
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage * image = [info objectForKey:UIImagePickerControllerEditedImage];
    _avatar.image = image;
    
    //回复导航条
    [[UINavigationBar appearance] setTintColor:[UIColor clearColor]];
    UIImage*image2 = UIIMAGE(@"back_button_normal");
    image2 = [image2 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [UINavigationBar appearance].backIndicatorImage = image2;
    [UINavigationBar appearance].backIndicatorTransitionMaskImage = image2;
    
    
    [photoAlertView removeFromSuperview];
    [picker dismissViewControllerAnimated:YES completion:^(void)
     {
         if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0)
         {
             //从拍照返回后强制设置
             [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleBlackOpaque];
             [[UIApplication sharedApplication] setStatusBarHidden:NO];
             [self setNeedsStatusBarAppearanceUpdate];
         }
     }];
    //do something  save
    
    
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    //恢复导航条
    [[UINavigationBar appearance] setTintColor:[UIColor clearColor]];
    UIImage*image2 = UIIMAGE(@"back_button_normal");
    image2 = [image2 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [UINavigationBar appearance].backIndicatorImage = image2;
    [UINavigationBar appearance].backIndicatorTransitionMaskImage = image2;
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleBlackOpaque];
    [[UIApplication sharedApplication] setStatusBarHidden:NO];
    [self setNeedsStatusBarAppearanceUpdate];
    
    
    [photoAlertView removeFromSuperview];
    [picker dismissViewControllerAnimated:YES completion:nil];
}



- (IBAction)gerenAction:(id)sender {
    [self.navigationController pushViewController:[IndividualAccountViewController new] animated:YES];
}

- (IBAction)anquanAction:(id)sender {
}

- (IBAction)jifenAction:(id)sender {
}

- (IBAction)rechargeAction:(id)sender {
}
- (IBAction)cashAction:(id)sender {
}
@end
