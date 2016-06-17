//
//  GlobalManager+Hub.h
//  GasService
//
//  Created by Zink on 15/9/15.
//  Copyright (c) 2015年 Zink. All rights reserved.
//

#import "ZinkManager.h"

/**
 *  提示
 */
@interface ZinkManager (Hub)

/**
 *  在keyWindow上显示loading
 */
+ (void)zinkShowLoadingInWindowWithContent:(NSString *)content;
/**
 *  在keyWindow上隐藏loading
 */
+ (void)zinkHideLoadingInWindow;
/**
 *  在指定view上显示loading
 */
+ (void)zinkShowLoadingInView:(UIView *)view withContent:(NSString *)content;
/**
 *  在指定view上隐藏loading
 */
+ (void)zinkHideLoadingInView:(UIView *)view;
/**
 *  显示提示
 */
+ (void)zinkShowMessage:(NSString *)content;
/**
 *  显示错误
 */
+ (void)zinkShowError:(NSError *)error;

@end
