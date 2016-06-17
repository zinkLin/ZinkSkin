//
//  ZinkManager+String.h
//  TestMyCocoPod
//
//  Created by kfzx-linz on 16/6/15.
//  Copyright © 2016年 ICBC. All rights reserved.
//

#import "ZinkManager.h"

@interface ZinkManager (String)

/**
 *  根据时间戳获取格式化的时间字符串
 */
+ (NSString *)zinkGetTimeStringByTimeInterval:(NSTimeInterval)timeInterval
                               withDateFormat:(NSString *)format;

/**
 *  防止空字符串
 */
+ (NSString *)ZinkStringValue:(NSString *)content;

/**
 *  将字符串转为json
 */
+ (id)zinkGetJSONByString:(NSString *)content;

/**
 *  将json转string
 */
+ (NSString *)zinkGetStringByJSON:(id)json;

/**
 *  获取系统版本号
 */
+ (NSString *)zinkGetSystemVersionString;

/**
 *  获取App版本号
 */
+ (NSString *)zinkGetAppVersionString;

/**
 *  获取随机数字符串
 */
+ (NSString *)zinkGetNonce;

@end
