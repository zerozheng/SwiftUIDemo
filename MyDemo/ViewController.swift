//
//  ViewController.swift
//  MyDemo
//
//  Created by 黄楠 on 2021/3/11.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "首页"
        self.view.backgroundColor = UIColor.white
        
        let button = UIButton(frame: CGRect(x: 0, y: 100, width: UIScreen.main.bounds.size.width, height: 50))
        button.backgroundColor = UIColor.green
        button.setTitle("我是storyboard工程，点我跳转到swiftUI工程", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.addTarget(self, action: #selector(push), for: .touchUpInside)
        self.view .addSubview(button)
        
        let vc = UIHostingController(rootView: Detail())
        self.addChild(vc)
        self.view.addSubview(vc.view)
        vc.view.backgroundColor = UIColor.yellow
        vc.view.frame = CGRect(x: 0, y: 200, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height - 200)
    }

    @objc func push() {
        let vc = UIHostingController(rootView: Detail())
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

