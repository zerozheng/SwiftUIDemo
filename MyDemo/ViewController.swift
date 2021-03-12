//
//  ViewController.swift
//  MyDemo
//
//  Created by 黄楠 on 2021/3/11.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
        
    var count: Int;
    var countWrapper: CountWrapper!;
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        count = 10;
        
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)

        countWrapper = CountWrapper(count: count) { [weak self] in
            self?.count += 1
            self?.updateInterface()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateInterface() {
        self.title = "\(count)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "\(count)"
        self.view.backgroundColor = UIColor.white
        
        let button = UIButton(frame: CGRect(x: 0, y: 100, width: UIScreen.main.bounds.size.width, height: 50))
        button.backgroundColor = UIColor.green
        button.setTitle("我是storyboard工程，点我跳转到swiftUI工程", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.addTarget(self, action: #selector(push), for: .touchUpInside)
        self.view .addSubview(button)
        
        let vc = UIHostingController(rootView: Detail(self.countWrapper))
        self.addChild(vc)
        self.view.addSubview(vc.view)
        vc.view.backgroundColor = UIColor.yellow
        vc.view.frame = CGRect(x: 0, y: 200, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height - 200)
    }

    @objc func push() {
        let vc = UIHostingController(rootView: Detail(self.countWrapper))
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

