#
# Be sure to run `pod lib lint CGMath.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CGMath'
  s.version          = '0.9.4'
  s.summary          = 'CGMath is a collection of extensions and functions mainly around CGGeometry types, like CGPoint, CGSize, CGRect and CGVector.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
CGMath is a collection of extensions and functions around CGGeometry types, like CGPoint, CGSize, CGRect and CGVector. It includes some other functions for FloatingPoint types, as well as Comparable.

For CGGeometry types it includes several convenience initializers as well as some useful variables, like variables to convert a size to a point, or to get the aspect ratio of a size.

For CGGeometry types and FloatingPoint types it includes the linear interpolation (lerp) function.

For FloatingPoint types it also has inverseLerp, clamp and remap.

To learn more about these functions, open the README.md file.
                       DESC

  s.homepage         = 'https://github.com/EmilioPelaez/CGMath'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'EmilioPelaez' => 'i.am@emiliopelaez.me' }
  s.source           = { :git => 'https://github.com/EmilioPelaez/CGMath.git', :tag => s.version.to_s }
	s.social_media_url = 'https://twitter.com/EmilioPelaez'

  s.ios.deployment_target = '9.0'
	s.swift_version = '4.2'
  s.source_files = 'CGMath/Classes/**/*'
  s.frameworks = 'CoreGraphics'
end
