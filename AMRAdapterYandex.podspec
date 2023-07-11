Pod::Spec.new do |s|
  s.name             = 'AMRAdapterYandex'
  s.version          = '5.8.0.0'
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
  s.ios.deployment_target = '12.0'
  s.swift_versions = ['5']
  s.vendored_frameworks = 'AMRAdapterYandex/Libs/AMRAdapterYandex.xcframework'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386 arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386 arm64' }
  s.dependency 'AMRSDK', '~> 1.5.17'
  s.dependency 'YandexMobileAds', '5.8.0'
end
