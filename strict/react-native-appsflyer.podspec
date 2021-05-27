require 'json'
pkg = JSON.parse(File.read("package.json"))

Pod::Spec.new do |s|
  s.name             = pkg["name"]
  s.version          = pkg["version"]
  s.summary          = pkg["description"]
  s.requires_arc     = true
  s.license          = pkg["license"]
  s.homepage         = pkg["homepage"]
  s.author           = pkg["author"]
  s.source           = { :git => pkg["repository"]["url"] }
  s.source_files     = 'ios/**/*.{h,m}'
  s.platform         = :ios, "8.0"
  s.static_framework = true
  s.dependency 'React'
  s.dependency 'AppsFlyerFramework/Strict', '6.3.0'
  s.xcconfig = {'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) AFSDK_NO_IDFA=1' }
end