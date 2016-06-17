Pod::Spec.new do |s|
s.name = 'ZinkSkin'
s.version = '1.0.0'
s.license = 'MIT'
s.summary = '即时皮肤切换'
s.homepage = 'https://github.com/zinkLin'
s.authors = { 'Zink' => '418175138@qq.com' }
s.source = { :git => "https://github.com/zinkLin/ZinkSkin", :tag => "1.0.0"}
s.requires_arc = true
s.ios.deployment_target = '7.0'
s.dependency 'ZinkManager'

s.source_files = "ZinkSkin/ZinkSkinManager.{h,m}"

s.subspec 'Category' do |ss|
  ss.source_files = 'ZinkSkin/UIButton+ZinkSkin.{h,m}', 'ZinkSkin/UIImageView+ZinkSkin.{h,m}', 'ZinkSkin/UILabel+ZinkSkin.{h,m}', 'ZinkSkin/UITextField+ZinkSkin.{h,m}', 'ZinkSkin/UITextView+ZinkSkin.{h,m}', 'ZinkSkin/UIView+ZinkSkin.{h,m}'
end

s.subspec 'Other' do |ss|
  ss.source_files = 'ZinkSkin/DKDeallocBlockExecutor.{h,m}', 'ZinkSkin/NSObject+DeallocBlock.{h,m}', 'ZinkSkin/NSObject+ZinkSkin.{h,m}', 'ZinkSkin/ZinkSkinInfo.{h,m}'
end

end