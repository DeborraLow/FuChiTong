//
//  SanbiaoView.h
//  FuChiTong
//
//  Created by LJ on 15/4/15.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SanbiaoViewDelegate;

@interface SanbiaoView : UIView<UITableViewDataSource,UITableViewDelegate>
- (IBAction)qixianAction:(id)sender;
- (IBAction)levelAction:(id)sender;

@property (strong, nonatomic) UITableView *tableView;
@property (nonatomic,strong) id<SanbiaoViewDelegate>delegate;

@end


@protocol SanbiaoViewDelegate <NSObject>

-(void)sanbiaoView:(SanbiaoView*)view selectedIndexPath:(NSIndexPath*)indexPath;

@end