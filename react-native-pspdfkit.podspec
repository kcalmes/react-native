require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "react-native-pspdfkit"
  s.version      = package['version']
  s.summary      = "A React Native module for the PSPDFKit library."
  s.authors		 = ["PSPDFKit"]
  s.homepage     = "https://github.com/PSPDFKit/react-native#readme"
  s.license      = package['license']
  s.platform     = :ios, "10.0"
  s.module_name  = 'PSPDFKitReactNativeiOS'
  s.source       = { :http => 'https://s3.amazonaws.com/xomly-dev-ops/pspdfkit-8.1.3-cocoapod-source.zip' }
  s.source_files = "*", "**/*"
  s.dependency 'React'
  s.frameworks = 'UIKit'
end
