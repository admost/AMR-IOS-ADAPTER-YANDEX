Pod::Spec.new do |s|
  s.name             = 'AMRAdapterYandex'
  s.version          = '4.4.2.2'
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
  s.ios.deployment_target = '9.0'
  s.vendored_libraries = 'AMRAdapterYandex/Libs/libAMRAdapterYandex.a'
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64 x86_64' }

  s.dependency 'AMRSDK', '~> 1.5.0'
  s.dependency 'YandexMobileAds', '4.4.2'
end
