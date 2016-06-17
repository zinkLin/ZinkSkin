//
//  GlobalManager+Predicate.h
//  GasService
//
//  Created by 峥英俊 on 15/9/28.
//  Copyright © 2015年 Zink. All rights reserved.
//

#import "ZinkManager.h"

/**
 *  正则
 */
@interface ZinkManager (Predicate)

/**
 *  是否邮箱
 */
+ (BOOL)zinkIsEmail:(NSString *)content;

/**
 *  是否手机号
 */
+ (BOOL)zinkIsPhone:(NSString *)content;

/**
 *  字符串是否含有Emoji表情
 */
+ (BOOL)zinkIsContainsEmoji:(NSString *)string;

@end
