
Pod::Spec.new do |spec|


  spec.name         = "xkPodlib"
  spec.version      = "0.0.2"
  spec.summary      = "本地依赖库"
  spec.platform            = :ios

  spec.description  = <<-DESC
                      本地依赖库 微信，支付宝，QQ，微博
                      
                      版本号：
                      AlipaySDK:15.7.9
                      WeiboSDK:003233000
                      WXApi:1.8.7
                      TencentOAuth:3.5.1_lite
                      
                   DESC

  spec.homepage     = "https://github.com/xiaoke2015/xkPrivatePodLib.git"
  spec.license      = "MIT"
  spec.author             = { "lijiajian" => "779454060@qq.com" }
  spec.source       = { :git => "https://github.com/xiaoke2015/xkPrivatePodLib.git", :tag => "#{spec.version}" }


  spec.subspec 'xkAlipaySDK' do |s|

    s.resource            = 'AlipaySDK_iOS/*.bundle'
    s.vendored_frameworks = 'AlipaySDK_iOS/*.framework'
    s.frameworks          = "SystemConfiguration", "CoreGraphics", "CoreTelephony" , 'CoreText', 'QuartzCore' , 'UIKit', 'Foundation', 'CFNetwork' ,'WebKit'
    s.libraries           = 'sqlite3' , 'z' ,'stdc++'
  end

  spec.subspec 'xkWeiXinSDK' do |s|

    s.source_files        = 'WechatOpenSDK/*.{h,m}'
    s.vendored_libraries  = 'WechatOpenSDK/*.a'
    s.frameworks          = "Security", "CoreGraphics", 'WebKit'
    s.libraries           = 'sqlite3' , 'z' ,'stdc++'
  end

   spec.subspec 'xkTencentSDK' do |s|

     s.resource            = 'TencentOpenApi/*.bundle'
     s.vendored_frameworks = 'TencentOpenApi/*.framework'
     s.frameworks          = "Security", "SystemConfiguration", "CoreGraphics", "CoreTelephony"  ,'WebKit'
     s.libraries           = 'sqlite3' , 'z' ,'stdc++' , 'iconv'
   end

  spec.subspec 'xkWeiboSDK' do |s|

    s.source_files        = 'WeiboSDK_iOS/*.{h,m}'
    s.vendored_libraries  = 'WeiboSDK_iOS/*.a'
    s.frameworks          = "Security", "SystemConfiguration", "CoreGraphics", "CoreTelephony" ,'Photos', 'ImageIO', 'CoreText', 'QuartzCore' ,'Security', 'UIKit', 'Foundation', 'WebKit'
    s.libraries           = 'sqlite3' , 'z' ,'stdc++'
  end
  

end
