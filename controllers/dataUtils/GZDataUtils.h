//
//  GZDataUtils.h
//  GAZREY.FRAME_1.0
//
//  Created by ZhuWeijie on 14-6-19.
//  Copyright (c) 2014年 zwj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>



@interface GZDataUtils : NSObject

+(NSString*)MD5:(NSString*)str;

//计算富文本高度
+(CGFloat)getTextHeightByString:(NSString*)str font:(UIFont*)font size:(CGSize)size;
//计算文本宽度
+(CGFloat)getTextWithByString:(NSString *)str font:(UIFont* )font size:(CGSize)size;

+(CGSize)labelAutoCalculateRectWith:(NSString*)text FontSize:(UIFont*)font MaxSize:(CGSize)maxSize;

//去除C#等后端框架返回数据自带的head
+(NSString*)replaceMicrosoftFrameHead:(NSString*)str;

//解析unicode格式编码
+(NSString *)replaceUnicode:(NSString *)unicodeStr;

//当前日期转字符串 //增加多种形式
+(NSString*)stringFromDate:(NSDate*)date;


+(NSString*)stringFromDateDay:(NSDate*)date;

+(NSString*)getYYMMDDByString:(NSString*)date;

//去除html标签
+(NSString *)filterHTML:(NSString *)html;
+(NSString *)flattenHTML:(NSString *)html trimWhiteSpace:(BOOL)trim;

//把数据写入本地沙盒中
+(BOOL)writeApplicationData:(NSData *)data toFile:(NSString *)fileName;

//查找是否有该数据存在于本地
+(BOOL)isExist:(NSString*)address;

+(NSData *)applicationDataFromFile:(NSString *)fileName;

@end
