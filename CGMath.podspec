#
# Be sure to run `pod lib lint CGMath.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "CGMath"
  s.version          = "0.1.0"
  s.summary          = "A collection of functions for CGGeometry types."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
                       DESC

  s.homepage         = "https://github.com/<GITHUB_USERNAME>/CGMath"
  s.license          = 'MIT'
  s.author           = { "Emilio Peláez" => "i.am@emiliopelaez.me" }
  s.source           = { :git => "https://github.com/<GITHUB_USERNAME>/CGMath.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/EmilioPelaez'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'CGMath' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
end
