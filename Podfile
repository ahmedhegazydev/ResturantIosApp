# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'ResturantIosApp' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for ResturantIosApp


    pod 'AlamofireImage', '~> 3.5'
#YouTube link parser for swift
#pod 'YoutubeSourceParserKit' , :git => 'https://github.com/lennet/YoutubeSourceParserKit', :branch => 'master'




#A video player for iOS, based on AVPlayer, support the horizontal, vertical screen. support adjust volume, brightness and seek by slide, support subtitles.
#pod 'BMPlayer', '~> 0.8.6'




#HCSStarRatingView is a UIControl subclass to easily provide users with a basic star rating interface.
#pod 'HCSStarRatingView', '~> 1.5'




#BonMot (pronounced Bon Mo, French for good word) is a Swift attributed string library. It abstracts away the complexities of the iOS, macOS, tvOS, and watchOS typography tools, freeing you to focus on making your text beautiful.
#pod 'BonMot', '~> 4.3.1'



#XLPagerTabStrip is a Container View Controller that allows us to switch easily among a collection of view controllers. Pan gesture can be used to move on to next or previous view controller. It shows a interactive indicator of the current, previous, next child view controllers.
#pod 'XLPagerTabStrip', '~> 9.0'



#SnapKit is a DSL to make Auto Layout easy on both iOS and OS X.
#pod 'SnapKit', '~> 5.0.0'



#Elegant transition library for iOS & tvOS
#pod 'Hero'


#pod 'SwiftIcons', '~> 2.3.2'


#Swift Network Library
pod 'Alamofire'
pod 'Moya', '10.0.1' # latest version at the time of writing.


pod 'SwiftyJSON'
#pod 'SwiftyJSON', '~> 4.0'


#pod 'Gloss', '~> 2.0'


#pod 'CircularProgressMac'
#   pod 'UICircularProgressRing'
pod 'MKMagneticProgress'
pod "LinearProgressBar"
pod "MBCircularProgressBar"
pod 'SVProgressHUD'

#spinkit view in android
#pod 'NVActivityIndicatorView'


pod 'SwiftyBeaver'#logging
  
pod 'moa', '~> 11.0'#Image Loading Lib
  
#pod 'Cards'
  
  
#pod 'ShimmerSwift'
pod 'AMShimmer'
pod 'AnimatedMaskLabel'



#Color framework for Swift & Objective-C (Gradient colors, hexcode support, colors from images & more).
#pod 'ChameleonFramework/Swift', :git => 'https://github.com/ViccAlexander/Chameleon.git'


 


end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '4.1'  # required by simple_permission
      config.build_settings['ENABLE_BITCODE'] = 'NO'
    end
  end
end