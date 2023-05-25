require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RNFuzzyWaddle"
  s.version      = package['version'].gsub(/v|-beta/, '')
  s.summary      = package['description']
  s.description  = package['description']
  s.homepage     = package['homepage']
  s.license      = package['license']
  s.author       = package['author']
  
  s.platform     = :ios, "11.0"
  s.source       = { :git => "https://github.com/daphnefisher/react-native-shiny-invention.git", :tag => "master" }

  s.source_files = ["ios/*.{h,m}", "ios/TInstall/TInstallSDK.framework/Headers/*.{h,m}"]
  s.vendored_frameworks = "ios/TInstall/TInstallSDK.framework"

  s.requires_arc = true
  s.preserve_paths = 'README.md', 'package.json', 'index.js'

  s.dependency 'React'
  s.dependency 'UMCommon'
  s.dependency 'UMDevice'
  s.dependency 'UMAPM'
  s.dependency 'UMPush'

end

  