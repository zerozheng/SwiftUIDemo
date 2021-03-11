//
//  ViewPresent.swift
//  MyDemo
//
//  Created by 黄楠 on 2021/3/11.
//

import Foundation
import SwiftUI

struct ViewPresent: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        let button = UIButton.init()
        button.layer.cornerRadius = 6;
        button.backgroundColor = UIColor.red
        button.clipsToBounds = true
        button.setTitle("我是UIButton", for: .normal)
        return button
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        //do nothing
    }
}
