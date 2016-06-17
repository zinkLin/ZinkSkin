//
//  GlobalManager+Storage.h
//  SeekingContacts
//
//  Created by kfzx-linz on 16/5/16.
//  Copyright © 2016年 Zink. All rights reserved.
//

#import "ZinkManager.h"
#define ZTmp_PATH                           [NSHomeDirectory() stringByAppendingString:@"/tmp"]
#define ZDocument_PATH                      [NSHomeDirectory() stringByAppendingString:@"/Documents"]

/**
 *  持久化
 */
@interface ZinkManager (Storage)

#pragma mark String&JSON
//持久化字符串
+ (void)zinkSaveString:(NSString*)value
                 byKey:(NSString*)key;

//获取持久化的文本
+ (NSString*)zinkLoadStringByKey:(NSString*)key;

//持久化字典
+ (void)zinkSaveJSON:(id)json
               byKey:(NSString *)key;

//获取持久化的字典
+ (id)zinkloadJSONByKey:(NSString*)key;

//移除持久化变量
+ (void)zinkRemoveValueByKey:(NSString*)key;

#pragma mark data
/**
 *  数据保存至沙盒
 */
+ (void)zinkSaveData:(NSData *)data
              byName:(NSString *)name;

/**
 *  从沙盒读取数据
 */
+ (NSData *)zinkLoadDataByName:(NSString *)name;

/**
 *  从沙盒删除数据
 */
+ (void)zinkRemoveDataByName:(NSString *)name;

/**
 *  获取文件保存路径
 */
+ (NSURL *)zinkGetSavePathByName:(NSString *)name;

@end
