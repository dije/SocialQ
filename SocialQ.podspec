#
# Be sure to run `pod lib lint SocialQ.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SocialQ"
  s.version          = "0.1.7"
  s.summary          = "Framework For Qeon"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = "Frame Work Login FB Ios Qeon"

  s.homepage         = "https://github.com/dije/SocialQ"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Qeon" => "dwijayanto@qeon.co.id" }
  s.source           = { :git => "https://github.com/dije/SocialQ.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true
#s.resources = 'Pod/Classes/**/*.{xib}'
  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
'SocialQ' => ['Pod/Assets/*.png','Pod/**/*.xib','Support\ Files/info.plist']
  }


  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
    s.dependency 'AFNetworking', '~> 2.3'
    s.dependency 'FBSDKCoreKit'
    s.dependency 'FBSDKLoginKit'
end
