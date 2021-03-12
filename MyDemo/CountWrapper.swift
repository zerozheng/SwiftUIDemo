//
//  CountWrapper.swift
//  MyDemo
//
//  Created by 黄楠 on 2021/3/12.
//

import Foundation
import Combine

class CountWrapper: ObservableObject {
    let objectWillChange = PassthroughSubject<CountWrapper, Never>()
    
    var count: Int
    var update: ()->Void
    
    init(count: Int, update: @escaping ()->Void = {}) {
        self.count = count
        self.update = update
    }
    
    func updateCount() {
        count += 1;
        update()
        objectWillChange.send(self)
    }
    
}

