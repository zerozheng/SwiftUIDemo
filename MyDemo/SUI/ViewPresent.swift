//
//  ViewPresent.swift
//  MyDemo
//
//  Created by 黄楠 on 2021/3/11.
//

import Foundation
import SwiftUI

struct ViewPresent: UIViewRepresentable {
    
    @Binding var value: Int
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(value: $value)
    }
    
    func makeUIView(context: Context) -> UIButton {
        let button = UIButton.init()
        button.layer.cornerRadius = 6;
        button.backgroundColor = UIColor.red
        button.clipsToBounds = true
        button.setTitle("v: \(value)", for: .normal)
        
        let coordinator = context.coordinator
        
        button.addTarget(coordinator, action:#selector(Coordinator.buttonClick), for: .touchUpInside)
        return button
    }
    
    func updateUIView(_ button: UIButton, context: Context) {
        //do nothing
        button.setTitle("v: \(value)", for: .normal)

    }
    
    class Coordinator: NSObject {
        var value: Binding<Int>

        init(value: Binding<Int>) {
            self.value = value
        }
        
        @objc func buttonClick() {
            self.value.wrappedValue += 1;
        }
    }
}
