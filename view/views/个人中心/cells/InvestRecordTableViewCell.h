//
//  InvestRecordTableViewCell.h
//  FuChiTong
//
//  Created by LJ on 15/4/16.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger , InvestButtonType)
{
    ///活期
    InvestButtonTypeProduct = 0,
    ///散标
    InvestButtonTypePowder,
};

@protocol InvestRecordCellDelegate;

@interface InvestRecordTableViewCell : UITableViewCell
- (IBAction)buttonAction:(id)sender;


@property (nonatomic, assign) InvestButtonType investButtonType;
@property (nonatomic) id<InvestRecordCellDelegate>delegate;
@property (weak, nonatomic) IBOutlet UILabel *text;
@property (weak, nonatomic) IBOutlet UIButton *detailButton;
@property (weak, nonatomic) IBOutlet UIButton *quiteButton;


@end
@protocol InvestRecordCellDelegate <NSObject>

-(void)investTableViewCell:(InvestRecordTableViewCell*)cell didSelected:(NSInteger)index forItem:(NSDictionary*)item;

-(void)investTableViewCell:(InvestRecordTableViewCell*)cell didQuiteIndex:(NSInteger)index forItem:(NSDictionary*)item;


@end