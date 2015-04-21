//
//  RegisterWebViewController.h
//  FuChiTong
//
//  Created by LJ on 15/4/3.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "FuchiViewController.h"

@interface RegisterWebViewController : FuchiViewController
-(id)initWithWebType:(NSInteger)type webURL:(NSURL*)url;

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@end
