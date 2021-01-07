plugin 'cocoapods-binary'

# If your Pods folder is excluded from git, you may add keep_source_code_for_prebuilt_frameworks! in the head of Podfile to speed up pod install,
# as it won't download all the sources every time prebuilt pods have changes.
# (for more info check: https://github.com/leavez/cocoapods-binary)
keep_source_code_for_prebuilt_frameworks!

# Stop compiling pods when nothing has changed in them using `all_binary!`
# (for more info check: https://github.com/leavez/cocoapods-binary)
all_binary!

# Uncomment the next line to define a global platform for your project
platform :ios, '13.5'

# Don't show pod warnings
inhibit_all_warnings!

use_frameworks!

####################################
# Different pod categories
####################################

# All pods used in testing or generating screenshots
def testing_pods
  pod 'Quick', '3.0.0'
  pod 'Nimble', '9.0.0'
  pod 'RxNimble', '5.0.0', subspecs: ['RxBlocking', 'RxTest']
  pod 'RxTest', '5.1.1'
  pod 'RxBlocking', '5.1.1'
  pod 'OHHTTPStubs/Swift', '9.1.0'
  pod "Cuckoo", '1.4.1'
end

# All shared pods used in all targets
def shared_pods
  ## Debugging and linting
  pod 'Reveal-SDK', :configurations => ['Debug']
  pod 'SwiftLint'

  ## Resource generation
  pod 'SwiftGen'

  ## Dependency Injection
  pod 'Resolver', '1.1.4'

  ## Others
  pod 'IQKeyboardManagerSwift', '6.5.6'
end

# Install these pods when Rx is needed in the target
def rx_pods
  ## Rx related
  pod 'RxSwift', '5.1.1'
  pod 'RxCocoa', '5.1.1'
  pod 'RxSwiftExt', '5.2.0'
  pod 'RxDataSources', '4.0.1'
  pod "RxSwiftUtilities", '2.2.0'
  pod 'NSObject+Rx', '5.1.0'
end

# Install these pods if the target need networking capabilities
def networking_pods
  ## Networking
  pod 'Moya/RxSwift', '14.0.0'
  pod 'Moya-ObjectMapper/RxSwift', '2.9'

end

####################################
# Targets
####################################

target 'Yoto' do

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

  # Pods for YotoKit
  shared_pods
  rx_pods
  networking_pods
  pod 'PureLayout'

  target 'YotoiOSTests' do
    inherit! :search_paths
    testing_pods
  end

end

target 'YotoUIKit' do

  # Pods for YotoKit
  rx_pods
  shared_pods

  target 'YotoUIKitTests' do
    inherit! :search_paths
    testing_pods
  end

end

target 'YotoTestSupport' do

  testing_pods
  rx_pods
  networking_pods

end


