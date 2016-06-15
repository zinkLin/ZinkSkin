//
//  SettingViewController.m
//  Demo
//
//  Created by kfzx-linz on 16/6/15.
//  Copyright © 2016年 ICBC. All rights reserved.
//

#import "SettingViewController.h"
#import "ZinkSkinManager.h"

@implementation SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    float width = [UIScreen mainScreen].bounds.size.width;
    
    [self.view zinkSetSkinWithBackgroundColors:@[[UIColor whiteColor], [UIColor darkGrayColor]]];
    
    UIButton *buttonSkin = [UIButton buttonWithType:UIButtonTypeCustom];
    [buttonSkin setFrame:CGRectMake(0, 150, width, 40)];
    [buttonSkin setTitle:@"切换皮肤" forState:UIControlStateNormal];
    [buttonSkin zinkSetSkinWithTitleColors:@[[UIColor darkGrayColor], [UIColor whiteColor]] forState:UIControlStateNormal];
    [buttonSkin zinkSetSkinWithTitleColors:@[[UIColor blackColor], [UIColor lightGrayColor]] forState:UIControlStateHighlighted];
    [buttonSkin addTarget:self action:@selector(actionChangeSkin) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonSkin];
}

- (void)actionChangeSkin {
    SkinType skinType = [ZinkSkinManager shareInstance].skinType;
    
    if (skinType == SkinTypeDefault) {
        [ZinkSkinManager shareInstance].skinType = SkinTypeNight;
    } else {
        [ZinkSkinManager shareInstance].skinType = SkinTypeDefault;
    }
}

@end
