//
//  AppDelegate.m
//  FuChiTong
//
//  Created by LJ on 15/4/3.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "AppDelegate.h"
#import "IndexViewController.h"
#import "SIAlertView.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
//    NSSetUncaughtExceptionHandler(&uncaughtExceptionHandler);
    
    IndexViewController * view = [[IndexViewController alloc] init];
    
    UIImage*image = UIIMAGE(@"back_button_normal");
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [UINavigationBar appearance].backIndicatorImage = image;
    [UINavigationBar appearance].backIndicatorTransitionMaskImage = image;

    [[UINavigationBar appearance] setTintColor:[UIColor clearColor]];
    [[UINavigationBar appearance] setBackgroundImage:UIIMAGE(@"nav_bg") forBarMetrics:UIBarMetricsDefault];
    [[UINavigationBar appearance] setTitleTextAttributes:@{
                                                           NSFontAttributeName:[UIFont fontWithName:@"HiraginoSansGB-W3" size:19],
                                                           NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    //alertView 初始化
    [[SIAlertView appearance] setMessageFont:[UIFont fontWithName:@"HiraginoSansGB-W3" size:15]];
    [[SIAlertView appearance] setTitleColor:[UIColor orangeColor]];
    [[SIAlertView appearance] setMessageColor:RGBCOLOR(247, 93, 37)];
    [[SIAlertView appearance] setCornerRadius:5];
    [[SIAlertView appearance] setShadowRadius:20];
    [[SIAlertView appearance] setButtonTitleColor:[UIColor whiteColor]];
    [[SIAlertView appearance] setViewBackgroundColor:[UIColor whiteColor]];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:view];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    
    return YES;
}

void uncaughtExceptionHandler(NSException *exception) {
    NSLog(@"CRASH: %@", exception);
    NSLog(@"Stack Trace: %@", [exception callStackSymbols]);
    // Internal error reporting
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
