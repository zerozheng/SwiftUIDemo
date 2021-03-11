//
//  ListPresent.swift
//  MyDemo
//
//  Created by 黄楠 on 2021/3/11.
//

import Foundation
import SwiftUI

struct ListPresent: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        ListController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        //do nothing
    }
}
