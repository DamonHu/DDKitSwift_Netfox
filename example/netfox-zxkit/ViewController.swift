//
//  ViewController.swift
//  netfox-zxkit
//
//  Created by Damon on 2021/7/17.
//

import UIKit
import ZXKitCore
import ZXKitUtil

class ViewController: UIViewController {
    let fox = NetFoxZXKit()
    override func viewDidLoad() {
        super.viewDidLoad()
        ZXKit.regist(plugin: fox)
        
        view.addSubview(mLeftButton)
        view.addSubview(mRightButton)
        mLeftButton.addTarget(self, action: #selector(_show), for: .touchUpInside)
        mRightButton.addTarget(self, action: #selector(_request), for: .touchUpInside)
    }

    //MARK: UI
    lazy var mLeftButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("显示日志", for: .normal)
        button.frame = CGRect(x: 20, y: 200, width: 180, height: 80)
        button.backgroundColor = UIColor.red
        return button
    }()
    
    lazy var mRightButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("发起请求", for: .normal)
        button.frame = CGRect(x: 20, y: 100, width: 180, height: 80)
        button.backgroundColor = UIColor.green
        return button
    }()
}

extension ViewController {
    @objc func _show() {
        ZXKit.show()
        print(ZXKitUtil.shared.getFileDirectory(type: .documents))
    }
    
    @objc func _request() {
        // 构建URL
        let url:URL = URL(string: "https://www.baidu.com")!
        // 构建请求request
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        // 发一个get请求
        let task = URLSession.shared.dataTask(with: request as URLRequest) {(
            data, response, error) in
            print(data)
        }
        task.resume()
    }
}
