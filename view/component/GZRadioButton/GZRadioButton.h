//
//  EIRadioButton.h
//  EInsure
//
//  Created by ivan on 13-7-9.
//  Copyright (c) 2013年 ivan. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol GZRadioButtonDelegate;

@interface GZRadioButton : UIButton {
    NSString                        *_groupId;
    BOOL                            _checked;
    id<GZRadioButtonDelegate>       _delegate;
}

@property(nonatomic, assign)id<GZRadioButtonDelegate>   delegate;
@property(nonatomic, copy, readonly)NSString            *groupId;
@property(nonatomic, assign)BOOL checked;
@property(nonatomic) CGRect buttonRect;

- (id)initWithDelegate:(id)delegate groupId:(NSString*)groupId;

@end

@protocol GZRadioButtonDelegate <NSObject>

@optional

- (void)didSelectedRadioButton:(GZRadioButton *)radio groupId:(NSString *)groupId;

@end
