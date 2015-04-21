//
//  ShareView.h
//  FuChiTong
//
//  Created by LJ on 14/12/2.
//  Copyright (c) 2014年 zwj. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ShareViewDelegate <NSObject>

-(void)didShare:(NSInteger)index;

@end

@interface ShareView : UIView
- (IBAction)shareAction:(id)sender;
@property(nonatomic,strong)id<ShareViewDelegate>delegate;

@end
