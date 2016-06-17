//
//  GlobalManager+Hub.m
//  GasService
//
//  Created by Zink on 15/9/15.
//  Copyright (c) 2015年 Zink. All rights reserved.
//

#import "ZinkManager+Hub.h"
#import "MBProgressHUD.h"

@implementation ZinkManager (Hub)

+ (void)zinkShowLoadingInWindowWithContent:(NSString *)content {
    [self zinkShowLoadingInView:[UIApplication sharedApplication].keyWindow withContent:content];
}
+ (void)zinkHideLoadingInWindow {
    [MBProgressHUD hideAllHUDsForView:[UIApplication sharedApplication].keyWindow animated:YES];
}
+ (void)zinkShowLoadingInView:(UIView *)view withContent:(NSString *)content {
    if (view) {
        MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
        hud.labelText = content;
    }
}
+ (void)zinkHideLoadingInView:(UIView *)view {
    if (view) {
        [MBProgressHUD hideAllHUDsForView:view animated:YES];
    }
}
+ (void)zinkShowMessage:(NSString *)content {
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:[UIApplication sharedApplication].keyWindow animated:YES];
    
    hud.mode = MBProgressHUDModeText;
    hud.labelText = content;
    hud.margin = 10.f;
    hud.removeFromSuperViewOnHide = YES;
    
    [hud hide:YES afterDelay:2];
}
+ (void)zinkShowError:(NSError *)error {
    if (error.code == 0) {
        [self zinkShowMessage:error.domain];
    } else {
        [self zinkShowMessage:@"网络请求超时，请稍后再试"];
    }
}

@end
