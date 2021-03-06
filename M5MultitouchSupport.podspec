Pod::Spec.new do |s|
  s.name = 'M5MultitouchSupport'
  s.version = '1.1.0'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.summary = 'Easily and (thread/memory) safely consume global OS X multitouch (trackpad, Magic Mouse) events.'
  s.homepage = 'https://github.com/mhuusko5/M5MultitouchSupport'
  s.social_media_url = 'https://twitter.com/mhuusko5'
  s.authors = { 'Mathew Huusko V' => 'mhuusko5@gmail.com' }
  s.source = { :git => 'https://github.com/mhuusko5/M5MultitouchSupport.git', :tag => s.version.to_s }

  s.platform = :osx
  s.osx.deployment_target = '10.8'
  s.requires_arc = true
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '/System/Library/PrivateFrameworks/' }
  s.frameworks = 'Cocoa', 'MultitouchSupport'
  
  s.source_files = 'M5MultitouchSupport/*.h'
  s.exclude_files = 'M5MultitouchSupport/*Internal.h'
  
  s.subspec 'Internal' do |ss|
    ss.source_files = 'M5MultitouchSupport/*.h', 'M5MultitouchSupport/*.m'
    ss.private_header_files = 'M5MultitouchSupport/*Internal.h'
  end
end
