
Pod::Spec.new do |s|

  s.name     = 'ZSSModel'
  s.version  = '0.0.1'
  s.license  = 'MIT'
  s.summary  = 'A tool exchange json to model'
  s.homepage = 'https://github.com/yuyuepeng/ZSSModel'
  s.social_media_url = 'https://weibo.com/u/1374742812'
  s.authors  = { 'yuyuepeng' => 'fyxsyypbj@163.com' }
  s.source   = { :git => 'https://github.com/yuyuepeng/ZSSModel.git', :tag => s.version }
  s.requires_arc = true
  s.platform     = :ios, "9.0"
  s.source_files = "ZSSModel/**/*.{h,m}"

end
