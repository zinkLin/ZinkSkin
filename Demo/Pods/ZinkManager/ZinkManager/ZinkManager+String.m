//
//  ZinkManager+String.m
//  TestMyCocoPod
//
//  Created by kfzx-linz on 16/6/15.
//  Copyright © 2016年 ICBC. All rights reserved.
//

#import "ZinkManager+String.h"

@implementation ZinkManager (String)

/**
 *  根据时间戳获取格式化的时间字符串
 */
+ (NSString *)zinkGetTimeStringByTimeInterval:(NSTimeInterval)timeInterval
                               withDateFormat:(NSString *)format {
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeInterval];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:format];
    return [dateFormatter stringFromDate:date];
}

//防止空字符串
+ (NSString *)ZinkStringValue:(NSString *)content {
    if ([content isKindOfClass:[NSString class]]) {
        return content;
    } else {
        if (!content) {
            return @"";
        } else {
            if ([content isKindOfClass:[NSNull class]]) {
                return @"";
            } else {
                return [NSString stringWithFormat:@"%@", content];
            }
        }
    }
}

//将字符串转为json
+ (id)zinkGetJSONByString:(NSString *)content {
    id json = [NSJSONSerialization JSONObjectWithData:[content dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingMutableContainers error:nil];
    return json;
}

//将json转string
+ (NSString *)zinkGetStringByJSON:(id)json {
    NSData *data = [NSJSONSerialization dataWithJSONObject:json options:NSJSONWritingPrettyPrinted error:nil];
    NSMutableString *string = [[NSMutableString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    [string replaceOccurrencesOfString:@"\n" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, string.length)];
    [string replaceOccurrencesOfString:@" " withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, string.length)];
    return string;
}

/**
 *  获取系统版本号
 */
+ (NSString *)zinkGetSystemVersionString {
    return [[UIDevice currentDevice] systemVersion];
}

/**
 *  获取App版本号
 */
+ (NSString *)zinkGetAppVersionString {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
}

/**
 *  获取随机数
 */
+ (NSString *)zinkGetNonce {
    NSString *nonce = [NSString stringWithFormat:@"%d%d%d", arc4random()%10000, arc4random()%10000, arc4random()%10000];
    return nonce;
}

@end
