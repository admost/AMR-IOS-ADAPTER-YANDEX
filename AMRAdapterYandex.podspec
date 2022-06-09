Pod::Spec.new do |s|
  s.name             = 'AMRAdapterYandex'
  s.version          = '5.0.2.10'
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
  s.ios.deployment_target = '10.0'
  s.vendored_frameworks = 'AMRAdapterYandex/Libs/AMRAdapterYandex.xcframework'
  s.dependency 'AMRSDK', '~> 1.5.17'

  s.user_target_xcconfig = { 
    'OTHER_LDFLAGS' => '-ObjC -all_load -lc++',
    "VALID_ARCHS": "arm64 armv7",
  }

  s.pod_target_xcconfig = { 
    'OTHER_LDFLAGS' => '-ObjC -lc++',
    "VALID_ARCHS": "arm64 armv7",
  }

  s.dependency 'YandexMobileAds', '5.0.2'
end
