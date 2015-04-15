//
//  PayViewController.m
//  FuChiTong
//
//  Created by LJ on 15/4/9.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "PayViewController.h"
#import "SIAlertView.h"

@interface PayViewController ()<UITextFieldDelegate>
{
    NSMutableArray * points;
}

@end

@implementation PayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"输入交易密码";
    [_txt becomeFirstResponder];
    _txt.delegate = self;
    points = [NSMutableArray new];
    _img1.userInteractionEnabled = YES;
    _img2.userInteractionEnabled = YES;
    _img3.userInteractionEnabled = YES;
    _img4.userInteractionEnabled = YES;
    _img5.userInteractionEnabled = YES;
    _img6.userInteractionEnabled = YES;

    [points addObject:_img1];
    [points addObject:_img2];
    [points addObject:_img3];
    [points addObject:_img4];
    [points addObject:_img5];
    [points addObject:_img6];
    
    UITapGestureRecognizer*gesture1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)];
    UITapGestureRecognizer*gesture2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)];
    UITapGestureRecognizer*gesture3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)];
    UITapGestureRecognizer*gesture4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)];
    UITapGestureRecognizer*gesture5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)];
    UITapGestureRecognizer*gesture6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)];
    
    [_img1 addGestureRecognizer:gesture1];
    [_img2 addGestureRecognizer:gesture2];
    [_img3 addGestureRecognizer:gesture3];
    [_img4 addGestureRecognizer:gesture4];
    [_img5 addGestureRecognizer:gesture5];
    [_img6 addGestureRecognizer:gesture6];
    
    // Do any additional setup after loading the view from its nib.
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [_txt resignFirstResponder];
}

-(void)tapAction:(UITapGestureRecognizer*)gesture
{
    [_txt becomeFirstResponder];
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSString *text = [textField.text stringByReplacingCharactersInRange:range withString:string];
    if (text.length > 6 && range.length!=1){
        textField.text = [text substringToIndex:6];
        
        return NO;
    }
    [self setPoint:text.length];
    NSLog(@"%@",text);
    return YES;
}

-(void)setPoint:(NSInteger)length
{
    for (int i = 0; i < 6; i++) {
        [(UIImageView*)points[i] setImage:nil];
    }
    for (int i = 0; i < length; i++) {
        [(UIImageView*)points[i] setImage:UIIMAGE(@"pay_point")];
    }
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

- (IBAction)zhifuAction:(id)sender {
    NSLog(@"%@",_txt.text);
    
    SIAlertView *alertView = [[SIAlertView alloc] initWithTitle:nil andMessage:@"投资成功，支出2888元\n获得积分：28.88点"];
    [alertView addButtonWithTitle:@"继续理财"
                             type:SIAlertViewButtonTypeDefault
                          handler:^(SIAlertView *alertView) {
                              NSLog(@"Default Clicked");
                              [self.navigationController popViewControllerAnimated:YES];
                          }];
    alertView.transitionStyle = SIAlertViewTransitionStyleBounce;
    [alertView show];
}
@end
