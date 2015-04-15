//
//  SanbiaoView.m
//  FuChiTong
//
//  Created by LJ on 15/4/15.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "SanbiaoView.h"
#import "SanbiaoTableViewCell.h"

@implementation SanbiaoView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code

    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(10, 90, 300, 344) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _tableView.backgroundColor = [UIColor clearColor];
    [_tableView setShowsVerticalScrollIndicator:NO];
    [self addSubview:_tableView];
    self.backgroundColor = [UIColor clearColor];
}

-(id)initWithFrame:(CGRect)frame
{
    if (self) {
        
    }
    return self;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellId = @"SanbiaoTableViewCellId";
    SanbiaoTableViewCell*cell = (SanbiaoTableViewCell*)[tableView dequeueReusableCellWithIdentifier:cellId];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"SanbiaoTableViewCell" owner:self options:nil] lastObject];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 120;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

- (IBAction)qixianAction:(id)sender {
    UIButton*button = (UIButton*)sender;
    [button setTitleColor:RGBCOLOR(247, 93, 37) forState:UIControlStateSelected];
    [sender setSelected:![sender isSelected]];
    [sender setTintColor:[UIColor clearColor]];
    //path someting

}

- (IBAction)levelAction:(id)sender {
    UIButton*button = (UIButton*)sender;
    [button setTitleColor:RGBCOLOR(247, 93, 37) forState:UIControlStateSelected];
    [sender setSelected:![sender isSelected]];
    [sender setTintColor:[UIColor clearColor]];
    //path someting
}
@end
