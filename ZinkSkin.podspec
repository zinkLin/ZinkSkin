Pod::Spec.new do |s|
s.name = 'ZinkSkin'
s.version = '1.0.2'
s.license = 'MIT'
s.summary = '即时皮肤切换'
s.homepage = 'https://github.com/zinkLin'
s.authors = { 'Zink' => '418175138@qq.com' }
s.source = { :git => "https://github.com/zinkLin/ZinkSkin", :tag => "1.0.2"}
s.requires_arc = true
s.ios.deployment_target = '7.0'
s.dependency 'ZinkManager'

s.source_files = "ZinkSkin/**/*", "ZinkSkin/Other/**/*", "ZinkSkin/Category/**/*"

end