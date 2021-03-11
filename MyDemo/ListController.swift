//
//  ListController.swift
//  MyDemo
//
//  Created by 黄楠 on 2021/3/11.
//

import UIKit

class ListController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "列表"
        self.view.backgroundColor = UIColor.white
        
        let button = UIButton(frame: CGRect(x: 0, y: 100, width: UIScreen.main.bounds.size.width, height: 50))
        button.backgroundColor = UIColor.green
        button.setTitle("我是storyboard工程，点我跳转到swiftUI工程", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.addTarget(self, action: #selector(push), for: .touchUpInside)
        self.view.addSubview(button)
    }
    

    @objc func push() {
        
    }

}
