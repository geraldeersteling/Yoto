# Uncomment the next line to define a global platform for your project
platform :ios, '13.0'

# Don't show pod warnings
inhibit_all_warnings!

# All pods used in testing or generating screenshots
def testing_pods
  pod 'Quick'
  pod 'Nimble'
  pod 'RxNimble'
  pod 'RxTest'
  pod 'RxBlocking'
  pod 'OHHTTPStubs/Swift'
  pod "Cuckoo"
end

target 'Yoto' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Yoto

  ## Debugging and linting
  pod 'Reveal-SDK', :configurations => ['Debug']
  pod 'SwiftLint'

  ## Resource generation
  pod 'SwiftGen'

  ## Rx related
  pod 'RxSwift'
  pod 'RxCocoa'
  pod 'RxDataSources'

  ## Dependency Injection
  pod 'Resolver'

  ## Networking
  pod 'Moya/RxSwift'
  pod 'Moya-ObjectMapper/RxSwift'

  ## Others
  pod 'IQKeyboardManagerSwift'

  target 'YotoTests' do
    inherit! :search_paths
    testing_pods
  end

  target 'YotoUITests' do
    testing_pods
  end

end
