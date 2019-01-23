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
  s.source_files = "ios/*.{xcodeproj}", "ios/RCTPSPDFKit/*.{h,m,swift}", "ios/RCTPSPDFKit/Converters/*.{h,m,swift}"
  s.dependency = ['React', 'PSPDFKit']
  s.frameworks = 'UIKit'
end


