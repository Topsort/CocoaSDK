Pod::Spec.new do |s|
  s.name = 'TopsortSDK'
  s.ios.deployment_target = '9.0'
  s.version = '1.0.0'
  s.source = { :git => 'git@github.com:Topsort/CocoaSDK.git', :tag => 'v1.0.0' }
  s.authors = 'Topsort'
  s.license = 'MIT'
  s.homepage = 'https://github.com/Topsort/CocoaSDK'
  s.summary = 'OpenAPIClient Swift SDK'
  s.source_files = 'TopsortSDK/Classes/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6.1'
end
