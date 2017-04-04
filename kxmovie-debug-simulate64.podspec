Pod::Spec.new do |spec|
  spec.name         = 'kxmovie-debug-simulate64'
  spec.version      = '0.0.3'
  spec.platform     = :ios, '7.0'
  spec.license      = 'MIT'
  spec.source       = { :git => 'https://github.com/beiliubei/kxmovie-debug-simulate64.git', :tag => spec.version.to_s }
  spec.requires_arc = true
  spec.homepage     = 'https://github.com/beiliubei/kxmovie-debug-simulate64'
  spec.summary      = 'kxmovie support armv7 armv7s arm64 x86_64'
  spec.author       = { 'Liu Bei' => 'beiliubei@gmail.com' }

  spec.source_files  = "*.{h,m}"
  spec.resources = "kxmovie.bundle/*.png"
  spec.public_header_files = "*.h"

  spec.frameworks = "MediaPlayer", "CoreAudio", "AudioToolbox", "Accelerate", "QuartzCore", "OpenGLES"
  spec.ios.libraries = "z", "iconv"
  spec.vendored_libraries = "libkxmovie.a", "libavcodec.a", "libavformat.a", "libavutil.a", "libswscale.a", "libswresample.a"
end
