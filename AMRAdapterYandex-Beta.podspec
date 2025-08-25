Pod::Spec.new do |s|
  s.name             = 'AMRAdapterYandex-Beta'
  s.version          = '7.15.1.0'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
														Copyright 2016
														Admost Mediation Limited. 
														LICENSE
														}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'Yandex adapter for AMR SDK.'
  s.description      = 'AMR Yandex adapter allows publishers to mediate Yandex banner, interstitial and video ads in AMR SDK.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-YANDEX.git',
 								 :tag => s.version.to_s
 								}
  s.documentation_url = 'https://admost.github.io/amrios/'
  s.platform 			= :ios
  s.ios.deployment_target = '13.0'
  s.swift_versions = ['5']
  s.vendored_frameworks = 'AMRAdapterYandex/Libs/AMRAdapterYandex.xcframework'
  s.pod_target_xcconfig = { 
    'OTHER_LDFLAGS' => '-ObjC -lc++',
    "VALID_ARCHS": "arm64 armv7 x86_64",
    'VALID_ARCHS[sdk=iphoneos*]' => 'armv7 arm64',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64 arm64'
  }

  s.dependency 'AMRSDK-Beta', '~> 1.5.55'
  s.dependency 'YandexMobileAds', '7.15.1'
end
