//
//  NetFox+zxkit.swift
//  netfox-zxkit
//
//  Created by Damon on 2021/7/17.
//

import Foundation
import ZXKitCore
import netfox

func UIImageHDBoundle(named: String?) -> UIImage? {
    guard let name = named else { return nil }
    guard let bundlePath = Bundle(for: NetFoxZXKit.self).path(forResource: "NetFoxZXKit", ofType: "bundle") else { return UIImage(named: name) }
    guard let bundle = Bundle(path: bundlePath) else { return UIImage(named: name) }
    return UIImage(named: name, in: bundle, compatibleWith: nil)
}

extension String{
    var ZXLocaleString: String {
        guard let bundlePath = Bundle(for: NetFoxZXKit.self).path(forResource: "NetFoxZXKit", ofType: "bundle") else { return NSLocalizedString(self, comment: "") }
        guard let bundle = Bundle(path: bundlePath) else { return NSLocalizedString(self, comment: "") }
        let msg = NSLocalizedString(self, tableName: nil, bundle: bundle, value: "", comment: "")
        return msg
    }
}

class NetFoxZXKit: ZXKitPluginProtocol {
    init() {
        NFX.sharedInstance().setGesture(.custom)
        NFX.sharedInstance().start()
    }
    
    func start() {
        NFX.sharedInstance().show()
    }
    
    public var pluginIdentifier: String {
        return "com.zxkit.netfox"
    }

    public var pluginIcon: UIImage? {
        return UIImageHDBoundle(named: "netfox_logo")
    }

    public var pluginTitle: String {
        return "NetWork".ZXLocaleString
    }

    public var pluginType: ZXKitPluginType {
        return .other
    }

    public var isRunning: Bool {
        return true
    }

    public func stop() {
        NFX.sharedInstance().hide()
    }


}
