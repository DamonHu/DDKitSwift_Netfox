Pod::Spec.new do |s|
s.name = 'DDKitSwift-Netfox'
s.swift_version = '5.0'
s.version = '3.0.0'
s.license= { :type => "MIT", :file => "LICENSE" }
s.summary = 'a quick look on all executed network requests performed by netfox'
s.homepage = 'https://github.com/DamonHu/netfox-zxkit'
s.authors = { 'ZXKitCode' => 'dong765@qq.com' }
s.source = { :git => "https://github.com/DamonHu/netfox-zxkit.git", :tag => s.version}
s.requires_arc = true
s.ios.deployment_target = '11.0'
s.resource_bundles = {
    'NetFoxZXKit' => ['pod/assets/**/*']
}
s.source_files = "pod/zxkit/*.swift"
s.dependency 'netfox', '1.21.0'
s.dependency 'DDKitSwift/core', '~> 3.0.0'
s.documentation_url = 'https://blog.hudongdong.com/ios/1169.html'
end
