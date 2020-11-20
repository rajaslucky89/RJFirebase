#
#  Be sure to run `pod spec lint RJFirebase.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name             = 'RJFirebase'
  s.version          = '0.1.0'
  s.summary          = 'A RJFirebase written in Swift for iOS'    
  s.description      = <<-DESC
This pod demonstrates including dependencies to other Pods in a developed-pod.
                       DESC

  s.homepage         = 'https://github.com/rajaslucky89/RJFirebase'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Raja Syahmudin' => 'rajaslucky89@gmail.com' }
  s.source           = { :git => 'https://github.com/rajaslucky89/RJFirebase.git', :tag => s.version.to_s }
  #s.social_media_url = 'https://id.linkedin.com/in/raja-syahmudin-harahap-8b125849'

  s.platform     = :ios, "11.0"
  s.ios.deployment_target = '11.0'
  s.swift_version = "4.2"
  s.static_framework = true

  s.source_files = 'RJFirebase/**/*'
  #s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }

  # s.resource_bundles = {
  #   'RJFirebase' => ['RJFirebase/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  
  s.dependency 'Firebase/RemoteConfig'
end
