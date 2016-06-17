//
//  GlobalManager+Storage.m
//  SeekingContacts
//
//  Created by kfzx-linz on 16/5/16.
//  Copyright © 2016年 Zink. All rights reserved.
//

#import "ZinkManager+Storage.h"

@implementation ZinkManager (Storage)
NSString *const kKeyPrefix = @"Zink_";

#pragma mark String&JSON
//持久化字符串
+ (void)zinkSaveString:(NSString*)value
                 byKey:(NSString*)key{
    key = [NSString stringWithFormat:@"%@%@", kKeyPrefix, key];
    
    if (value == nil) {
        [ZinkManager zinkRemoveValueByKey:key];
    }else{
        NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
        [ud setObject:value forKey:key];
        [ud synchronize];
    }
}

//持久化字典
+ (void)zinkSaveJSON:(id)json
               byKey:(NSString *)key {
    key = [NSString stringWithFormat:@"%@%@", kKeyPrefix, key];
    
    if (json == nil) {
        [ZinkManager zinkRemoveValueByKey:key];
    }else{
        if ([NSJSONSerialization isValidJSONObject:json]){
            NSData *jsonData = [NSJSONSerialization dataWithJSONObject:json options:NSJSONWritingPrettyPrinted error:nil];
            NSString *json =[[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
            [ZinkManager zinkSaveString:json byKey:key];
        }
    }
}

//获取持久化的文本
+ (NSString*)zinkLoadStringByKey:(NSString*)key{
    key = [NSString stringWithFormat:@"%@%@", kKeyPrefix, key];
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    NSString *result = [ud objectForKey:key];
    if (!result) {
        result = @"";
    }
    return result;
}

//获取持久化的字典
+ (id)zinkloadJSONByKey:(NSString*)key{
    key = [NSString stringWithFormat:@"%@%@", kKeyPrefix, key];
    NSDictionary *result = nil;
    NSString *jsonStr = [ZinkManager zinkLoadStringByKey:key];
    if (jsonStr) {
        NSData *jsonData = [jsonStr dataUsingEncoding:NSUTF8StringEncoding];
        result = [NSJSONSerialization JSONObjectWithData:jsonData options:kNilOptions error:nil];
    }
    return result;
}

//移除持久化变量
+ (void)zinkRemoveValueByKey:(NSString*)key{
    key = [NSString stringWithFormat:@"%@%@", kKeyPrefix, key];
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud removeObjectForKey:key];
    [ud synchronize];
}

#pragma mark data
/**
 *  数据保存至沙盒
 */
+ (void)zinkSaveData:(NSData *)data
              byName:(NSString *)name {
    NSURL *url = [ZinkManager zinkGetSavePathByName:name];
    [data writeToURL:url atomically:YES];
}

/**
 *  从沙盒读取数据
 */
+ (NSData *)zinkLoadDataByName:(NSString *)name {
    NSURL *url = [ZinkManager zinkGetSavePathByName:name];
    NSData *data = [NSData dataWithContentsOfURL:url];
    return data;
}

/**
 *  从沙盒删除数据
 */
+ (void)zinkRemoveDataByName:(NSString *)name {
    NSURL *url = [ZinkManager zinkGetSavePathByName:name];
    [[NSFileManager defaultManager] removeItemAtURL:url error:nil];
}

/**
 *  获取文件保存路径
 */
+ (NSURL *)zinkGetSavePathByName:(NSString *)name {
    NSString *urlStr = [NSString stringWithFormat:@"%@/ZinkCache", ZTmp_PATH];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    [fileManager createDirectoryAtPath:urlStr withIntermediateDirectories:YES attributes:nil error:nil];
    urlStr = [urlStr stringByAppendingFormat:@"/%@", name];
    
    NSURL *url=[NSURL fileURLWithPath:urlStr];
    return url;
}

@end
