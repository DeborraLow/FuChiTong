//
//  CardHeadView.h
//  FuChiTong
//
//  Created by LJ on 15/4/20.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CardHeadView : UIView
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *weihao;
@property (weak, nonatomic) IBOutlet UIImageView *arrow;

-(void)open;
-(void)close;


@end
