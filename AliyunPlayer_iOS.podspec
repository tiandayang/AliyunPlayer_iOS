Pod::Spec.new do |s|
  s.name         = "AliyunPlayer_iOS"
  s.version      = "3.4.9"
  s.summary      = "AliyunPlayer_iOS."
  s.description  = <<-DESC
                   It's an SDK for aliyun video vodplay, which implement by Objective-C.
                   DESC
  s.homepage     = "https://github.com/aliyunvideo/AliyunPlayer_iOS"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "aliyunvideo" => "videosdk@service.aliyun.com"}
  s.platform     = :ios
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/aliyunvideo/AliyunPlayer_iOS.git", :tag => "#{s.version}" }
	

  #基础播放器
  s.subspec 'AliyunPlayerSDK' do |playerSDK|
	playerSDK.vendored_frameworks = 'AliyunPlayerSDK.framework','AliThirdparty.framework'
	playerSDK.frameworks = 'MediaPlayer','CoreGraphics','QuartzCore','CoreVideo','OpenGLES','AVFoundation','CoreMedia','VideoToolbox','AudioToolbox'
	playerSDK.resource = 'AliyunLanguageSource.bundle'
  end


  #高级播放器
  s.subspec 'AliyunVodPlayerSDK' do |vodplayer|
	vodplayer.vendored_frameworks = 'AliyunVodPlayerSDK.framework'
	vodplayer.dependency 'AliyunPlayer_iOS/AliyunPlayerSDK'
  end		
   
  #s.frameworks = 'VideoToolBox','MediaPlayer'
  #s.libraries = 'z'  
  s.requires_arc = true
   

end
