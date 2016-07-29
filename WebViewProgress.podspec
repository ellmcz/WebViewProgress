Pod::Spec.new do |s|
  s.name         = "WebViewProgress"
  s.version      = "1.0"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
   s.summary     = "网页加载"
  s.homepage     = "https://github.com/ellmcz/WebViewProgress"
  s.authors      = { "ellmcz" => "wqbs007@163.com" }
  s.source       = { :git => "https://github.com/ellmcz/WebViewProgress.git", :tag => "1.0"}
  s.platform     = :ios, '6.0'
  s.requires_arc = true
  s.source_files = 'WebViewProgressView/*.{h,m}'
end