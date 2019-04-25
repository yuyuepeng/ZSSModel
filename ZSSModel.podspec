#
#  Be sure to run `pod spec lint ZSSModel.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name     = 'ZSSModel'
  s.version  = '0.0.1'
  s.license  = 'MIT'
  s.summary  = 'A tool exchange json to model'
  s.homepage = 'https://github.com/yuyuepeng/ZSSModel'
  s.social_media_url = 'https://weibo.com/u/1374742812'
  s.authors  = { 'yuyuepeng' => 'fyxsyypbj@163.com' }
  s.source   = { :git => 'https://github.com/yuyuepeng/ZSSModel.git', :tag => s.version, :submodules => true }
  s.requires_arc = true
  
  #s.public_header_files = 'ZSSModel/ZSSModel.h'
  s.source_files = "ZSSModel/**/*.{h,m}"

end
