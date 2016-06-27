ZinkSkin
===
- 快速实现多种本地皮肤风格切换
- 支持iOS7+

## Contents
* [开始使用](#Getting_Started)
	* [能做什么](#Features)
	* [安装](#Installation)
* [示例](#Examples)
	* [ZinkSkinManager](#ZinkSkinManager)
	* [UIView](#UIView)
	* [UIImageView](#UIImageView)
	* [UIButton](#UIButton)
	* [Other](#Other)
* [感谢](#Thanks)


# <a id="Getting_Started"></a> 开始使用
## <a id="Features"></a> 能做什么
- ZinkSkin能实现一行代码就为视图添加换肤功能，目前已为UIView, UIImageView, UILabel, UIButton等基础控件添加分类，以实现换肤支持

## <a id="Installation"></a> 安装
### 使用CocoaPods
```ruby
pod 'ZinkSkin'
```

# <a id="Examples"></a>示例

## <a id="ZinkSkinManager"></a>ZinkSkinManager皮肤管理
```objc
/**
 *  皮肤管理工具类
 */
@interface ZinkSkinManager : NSObject

/**
 *  设置该属性，即可修改当前皮肤
 */
@property (assign, nonatomic) SkinType skinType;
@end
```

## <a id="UIView"></a>UIView
###设置UIView的颜色
```objc
@interface UIView (ZinkSkin)
/**
 *  将各个皮肤对应的颜色传入数组
 */
- (void)zinkSetSkinWithBackgroundColors:(NSArray<UIColor *> *)array;
@end

UIView *view;
[view zinkSetSkinWithBackgroundColors:@[[UIColor whiteColor], [UIColor darkGrayColor]]];
```

## <a id="UIImageView"></a>UIImageView
###设置UIImageView的图片
```objc
@interface UIImageView (ZinkSkin)
/**
 *  将各个皮肤对应的文本颜色传入数组
 */
- (void)zinkSetSkinWithImages:(NSArray<UIImage *> *)array;
@end

UIImageView *imageView;
[imageView zinkSetSkinWithImages:@[[UIImage imageNamed:@"normal1"], [UIImage imageNamed:@"night1"]]];
```

## <a id="UIButton"></a>UIButton
###设置UIButton不同状态下的图片
```objc
@interface UIButton (ZinkSkin)
/**
 *  将各个皮肤对应的标题颜色传入数组
 */
- (void)zinkSetSkinWithTitleColors:(NSArray<UIColor *> *)array forState:(UIControlState)state;
/**
 *  将各个皮肤对应的图标传入数组
 */
- (void)zinkSetSkinWithImage:(NSArray<UIImage *> *)array forState:(UIControlState)state;
/**
 *  将各个皮肤对应的背景图传入数组
 */
- (void)zinkSetSkinWithBackgroundImage:(NSArray<UIImage *> *)array forState:(UIControlState)state;
@end

UIButton *button;
[button zinkSetSkinWithBackgroundImage:@[[UIImage imageNamed:@"normal"], 
                                         [UIImage imageNamed:@"night"]] 
                              forState:UIControlStateNormal];
[button zinkSetSkinWithBackgroundImage:@[[UIImage imageNamed:@"normal1"], 
                                         [UIImage imageNamed:@"night1"]] 
                              forState:UIControlStateHighlighted];
```

### <a id="Other"></a>Other
为防出现特殊的视图而造成无法换肤。
`ZinkSkinManager`每次换肤时，都会发出通知:`kViewSkinChangeNotification`。
可以监听该通知，来修改对应的视图。

# <a id="Thanks"></a> 感谢
感谢Draveness的无私分享：[DKNightVersion](https://github.com/Draveness/DKNightVersion)
