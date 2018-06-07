Pod::Spec.new do |s|
  s.name         = "RxContacts"
  s.version      = "1.0.0"
  s.summary      = "RxSwift extensions for Contacts framework."

  s.homepage     = "https://github.com/satishbabariya/RxContacts"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Satish Babariya" => "satish.babariya@gmail.com" }

s.cocoapods_version = '>= 1.4.0'
s.swift_version = '4.0'

  s.ios.deployment_target = "9.0"
  s.osx.deployment_target = "10.12"
  s.watchos.deployment_target = "3.0"

  s.source       = { :git => "https://github.com/satishbabariya/RxContacts.git", :tag => s.version.to_s }
  s.source_files  = "Sources/**/*"
  s.framework  = "Foundation" ,"Contacts"

s.static_framework = true
s.dependency 'RxSwift', '~> 4'
s.dependency 'RxCocoa', '~> 4'

end
