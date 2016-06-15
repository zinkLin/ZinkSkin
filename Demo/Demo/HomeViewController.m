//
//  ViewController.m
//  Demo
//
//  Created by kfzx-linz on 16/6/15.
//  Copyright © 2016年 ICBC. All rights reserved.
//

#import "HomeViewController.h"
#import "ZinkSkinManager.h"
#import "SettingViewController.h"

@interface HomeViewController ()

@property (strong, nonatomic) UITextField *textField;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    float width = [UIScreen mainScreen].bounds.size.width;
    float height = [UIScreen mainScreen].bounds.size.height;
    
    
    UIButton *buttonPush = [UIButton buttonWithType:UIButtonTypeCustom];
    [buttonPush setFrame:CGRectMake(0, height - 60, width, 40)];
    [buttonPush setTitle:@"前往设置界面" forState:UIControlStateNormal];
    [buttonPush zinkSetSkinWithTitleColors:@[[UIColor darkGrayColor], [UIColor whiteColor]] forState:UIControlStateNormal];
    [buttonPush zinkSetSkinWithTitleColors:@[[UIColor blackColor], [UIColor lightGrayColor]] forState:UIControlStateHighlighted];
    [buttonPush addTarget:self action:@selector(actionPush) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonPush];
    
    /*-----------------------------view 换肤代码-----------------------------*/
    [self.view zinkSetSkinWithBackgroundColors:@[[UIColor whiteColor], [UIColor darkGrayColor]]];
    
    //textField
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(20, 100, width-40, 40)];
    [textField setText:@"text filed"];
    [textField setBorderStyle:UITextBorderStyleRoundedRect];
    [self.view addSubview:textField];
    self.textField = textField;
    /*-----------------------------textField 换肤代码-----------------------------*/
    [textField zinkSetSkinWithFonts:@[[UIFont systemFontOfSize:17], [UIFont boldSystemFontOfSize:25]]];
    [textField zinkSetSkinWithTextColors:@[[UIColor whiteColor], [UIColor blackColor]]];
    [textField zinkSetSkinWithBackgroundColors:@[[UIColor blackColor], [UIColor whiteColor]]];
    
    //imageView
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 150, width, 40)];
    [imageView setContentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:imageView];
    /*-----------------------------imageView 换肤代码-----------------------------*/
    [imageView zinkSetSkinWithImages:@[[UIImage imageNamed:@"normal1"],
                                       [UIImage imageNamed:@"night1"]]];
    
    //button
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [button1 setFrame:CGRectMake(0, 200, width, 40)];
    [button1 setTitle:@"button" forState:UIControlStateNormal];
    [button1.imageView setContentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:button1];
    /*-----------------------------button 换肤代码-----------------------------*/
    [button1 zinkSetSkinWithTitleColors:@[[UIColor darkGrayColor], [UIColor whiteColor]] forState:UIControlStateNormal];
    [button1 zinkSetSkinWithTitleColors:@[[UIColor blackColor], [UIColor lightGrayColor]] forState:UIControlStateHighlighted];
    [button1 zinkSetSkinWithBackgroundImage:@[[UIImage imageNamed:@"normal"],
                                              [UIImage imageNamed:@"night"]] forState:UIControlStateNormal];
    [button1 zinkSetSkinWithBackgroundImage:@[[UIImage imageNamed:@"normal1"],
                                              [UIImage imageNamed:@"night1"]] forState:UIControlStateHighlighted];
    
    //label
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 250, width, 40)];
    [label setTextAlignment:NSTextAlignmentCenter];
    [label setText:@"label"];
    [self.view addSubview:label];
    /*-----------------------------label 换肤代码-----------------------------*/
    [label zinkSetSkinWithFonts:@[[UIFont systemFontOfSize:17], [UIFont boldSystemFontOfSize:25]]];
    [label zinkSetSkinWithTextColors:@[[UIColor whiteColor], [UIColor blackColor]]];
    [label zinkSetSkinWithBackgroundColors:@[[UIColor blackColor], [UIColor whiteColor]]];
}

- (void)actionPush {
    SettingViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"SettingViewController"];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.textField resignFirstResponder];
}

@end
