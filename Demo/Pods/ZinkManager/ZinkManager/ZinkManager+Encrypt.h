//
//  GlobalManager+Encrypt.h
//  GasService
//
//  Created by Zink on 15/9/15.
//  Copyright (c) 2015年 Zink. All rights reserved.
//

#import "ZinkManager.h"

/**
 *  加密
 */
@interface ZinkManager (Encrypt)

+ (NSString *)zinkMd5:(NSString *)str;
+ (NSString *)zinkSha1:(NSString *)content;

@end
