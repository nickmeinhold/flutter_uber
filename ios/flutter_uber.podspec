#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_uber.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_uber'
  s.version          = '0.0.1'
  s.summary          = 'A flutter plugin for the Uber SDK.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'http://enspyr.co'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Enspyr Pty Ltd' => 'contact@enspyr.co' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'UberRides'
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'
end
