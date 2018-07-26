#
#  Be sure to run `pod spec lint Maybach.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "Maybach"
  s.version      = "0.0.1"
  s.summary      = "Maybach is a mix of help class and extension's"
  s.description  = "Maybach is a mix of help extension's and class"
  s.homepage     = "https://github.com/martin-przystalka/Maybach/blob/master/README.md"
  s.platform     = :ios
  s.platform     = :ios, "9.0"


  s.license      = "MIT"
  s.author             = { "Martin Przystalka" => "martin.przystalka.developer@gmail.com" }
  s.source       = { :git => "https://github.com/martin-przystalka/Maybach.git", :tag => "#{s.version}" }

  s.source_files  = "Maybach/Maybach", "Maybach/Maybach/**/*.{h,m}"
  s.exclude_files = "Maybach/Maybach/Exclude"
end
