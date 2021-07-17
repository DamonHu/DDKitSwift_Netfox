Pod::Spec.new do |s|
s.name = 'netfox-zxkit'
s.swift_version = '5.0'
s.version = '0.0.4'
s.license= { :type => "Apache-2.0", :file => "LICENSE" }
s.summary = 'a quick look on all executed network requests performed by netfox'
s.homepage = 'https://github.com/ZXKitCode/netfox-zxkit'
s.authors = { 'ZXKitCode' => 'dong765@qq.com' }
s.source = { :git => "https://github.com/ZXKitCode/netfox-zxkit.git", :tag => s.version}
s.requires_arc = true
s.ios.deployment_target = '11.0'
s.resource_bundles = {
    'NetFoxZXKit' => ['pod/assets/**/*']
}
s.source_files = "pod/zxkit/*.swift"
s.dependency 'netfox'
s.dependency 'ZXKitCore'
s.documentation_url = 'https://blog.hudongdong.com/ios/1169.html'
end
