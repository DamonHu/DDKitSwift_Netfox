Pod::Spec.new do |s|
s.name = 'DDKitSwift_Netfox'
s.swift_version = '5.0'
s.version = '4.0.0'
s.license= { :type => "MIT", :file => "LICENSE" }
s.summary = 'a quick look on all executed network requests performed by netfox'
s.homepage = 'https://github.com/DamonHu/DDKitSwift_Netfox'
s.authors = { 'DamonHu' => 'dong765@qq.com' }
s.source = { :git => "https://github.com/DamonHu/DDKitSwift_Netfox.git", :tag => s.version}
s.requires_arc = true
s.ios.deployment_target = '12.0'
s.resource_bundles = {
    'DDKitSwift_Netfox' => ['pod/assets/**/*']
}
s.source_files = "pod/*.swift"
s.dependency 'netfox', '~> 1'
s.dependency 'DDKitSwift/core', '~> 4'
s.documentation_url = 'https://github.com/DamonHu/DDKitSwift_Netfox'
end
