//
//  ProductListTableViewCell.h
//  FuChiTong
//
//  Created by LJ on 15/4/3.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ProductListCellDelegate <NSObject>

-(void)didJoin:(NSInteger)index;

@end

@interface ProductListTableViewCell : UITableViewCell
- (IBAction)joinAction:(id)sender;

@property (weak, nonatomic) IBOutlet UIView *colorView;
@property (weak, nonatomic) IBOutlet UIButton *joinButton;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *profit;
@property (weak, nonatomic) IBOutlet UILabel *price;
@property (weak, nonatomic) IBOutlet UILabel *detail;
@property (nonatomic,strong)id<ProductListCellDelegate>delegate;

-(void)setColor:(UIColor*)color;
@end
