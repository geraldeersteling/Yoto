# Uncomment the next line to define a global platform for your project
platform :ios, '13.0'

# Don't show pod warnings
inhibit_all_warnings!

####################################
# Different pod categories
####################################

# All pods used in testing or generating screenshots
def testing_pods
  pod 'Quick'
  pod 'Nimble'
  pod 'RxNimble', subspecs: ['RxBlocking', 'RxTest']
  pod 'RxTest'
  pod 'RxBlocking'
  pod 'OHHTTPStubs/Swift'
  pod "Cuckoo"
end

# All shared pods used in all targets
def shared_pods
  ## Debugging and linting
  pod 'Reveal-SDK', :configurations => ['Debug']
  pod 'SwiftLint'

  ## Resource generation
  pod 'SwiftGen'

  ## Dependency Injection
  pod 'Resolver'

  ## Others
  pod 'IQKeyboardManagerSwift'
end

# Install these pods when Rx is needed in the target
def rx_pods
  ## Rx related
  pod 'RxSwift'
  pod 'RxCocoa'
  pod 'RxSwiftExt'
  pod 'RxDataSources'
  pod "RxSwiftUtilities"
  pod 'NSObject+Rx'
end

# Install these pods if the target need networking capabilities
def networking_pods
  ## Networking
  pod 'Moya/RxSwift'
  pod 'Moya-ObjectMapper/RxSwift'

end

####################################
# Targets
####################################

target 'Yoto' do
  use_frameworks!

  # Pods for Yoto
  shared_pods

  target 'YotoTests' do
    inherit! :search_paths
    testing_pods
  end

  target 'YotoUITests' do
    testing_pods
  end

end

target 'YotoKit' do
  use_frameworks!

  # Pods for YotoKit
  shared_pods
  rx_pods
  networking_pods

  target 'YotoKitTests' do
    inherit! :search_paths
    testing_pods
  end

end

target 'YotoiOS' do
  use_frameworks!

  # Pods for YotoKit
  shared_pods
  rx_pods
  networking_pods

  target 'YotoiOSTests' do
    inherit! :search_paths
    testing_pods
  end

end

target 'YotoUIKit' do
  use_frameworks!

  # Pods for YotoKit
  shared_pods

  target 'YotoUIKitTests' do
    inherit! :search_paths
    testing_pods
  end

end
