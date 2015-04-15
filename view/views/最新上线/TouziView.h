//
//  TouziView.h
//  FuChiTong
//
//  Created by LJ on 15/4/15.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TouziViewDelegate <NSObject>

-(void)didClickButton:(NSInteger)index;
-(void)didJoin:(NSDictionary*)data;

@end

@interface TouziView : UIView
@property (strong, nonatomic)  UIButton *customerButton;
@property (strong, nonatomic)  UIButton *detailButton;
@property (nonatomic,strong)id<TouziViewDelegate>delegate;
- (IBAction)joinAction:(id)sender;


@end
