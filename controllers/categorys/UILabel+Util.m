//
//  UILabel+Util.m
//  FuChiTong
//
//  Created by LJ on 15/4/8.
//  Copyright (c) 2015年 zwj. All rights reserved.
//

#import "UILabel+Util.h"

@implementation UILabel (Util)

- (CGSize)boundingRectWithSize:(CGSize)size
{
    NSDictionary *attribute = @{NSFontAttributeName: self.font};
    
    CGSize retSize = [self.text boundingRectWithSize:size
                                             options:\
                      NSStringDrawingTruncatesLastVisibleLine |
                      NSStringDrawingUsesLineFragmentOrigin |
                      NSStringDrawingUsesFontLeading
                                          attributes:attribute
                                             context:nil].size;
    
    return retSize;
}

@end
