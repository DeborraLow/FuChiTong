//
//  CardTableViewCell.h
//  FuChiTong
//
//  Created by LJ on 15/4/19.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CardTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *weihao;
@property (weak, nonatomic) IBOutlet UIImageView *img;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UIImageView *bgImg;
@end
