//
//  RegisterWebViewController.m
//  FuChiTong
//
//  Created by LJ on 15/4/3.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "RegisterWebViewController.h"
#import <MMMaterialDesignSpinner.h>

@interface RegisterWebViewController ()<UIWebViewDelegate>
{
    NSURL * baseURL;
    MMMaterialDesignSpinner *spinnerView;

}

@end

@implementation RegisterWebViewController

-(id)initWithWebType:(NSInteger)type webURL:(NSURL*)url
{
    self = [super init];
    if (self) {
        switch (type) {
            case 0:
                self.title = @"免责条款";
                break;
                case 1:
                self.title = @"用户协议";
                break;
                
            default:
                break;
        }
        baseURL = url;
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    spinnerView = [[MMMaterialDesignSpinner alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    spinnerView.center = CGPointMake(self.view.center.x, self.view.center.y);
    spinnerView.lineWidth = 1.5f;
    spinnerView.tintColor = RGBCOLOR(247, 94, 37);
    [self.view addSubview:spinnerView];
    
    NSURLRequest *request =[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.baidu.com"]];

    [_webView loadRequest:request];
    _webView.delegate = self;
    
    // Do any additional setup after loading the view from its nib.
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [spinnerView startAnimating];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [spinnerView stopAnimating];
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

@end
