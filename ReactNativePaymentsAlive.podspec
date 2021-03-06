require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))
version = package["version"]
giturl = package["repository"]
homepage = package["homepage"]

Pod::Spec.new do |s|
  s.name         = "ReactNativePaymentsAlive"
  s.version      = version
  s.summary      = "react-native-payments-alive"
  s.description  = <<-DESC
                  Native Payments (Google and Apple Pay) from React-Native
                   DESC
  s.homepage     = homepage
  s.license      = "MIT"
  s.author       = "Ivan Vasilyev"
  s.platform     = :ios, "7.0"
  s.source       = { :git => giturl, :tag => version }
  s.source_files  = "lib/ios/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end
