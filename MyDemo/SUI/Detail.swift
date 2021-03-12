//
//  Detail.swift
//  MyDemo
//
//  Created by 黄楠 on 2021/3/11.
//

import SwiftUI

struct Detail: View {
    var value: Binding<Int>
    @ObservedObject var countWrapper: CountWrapper
    
    init(_ countWrapper: CountWrapper) {
        self.countWrapper = countWrapper
        value = Binding(get: {
            countWrapper.count
        }, set: { _ in
            countWrapper.updateCount()
        })
    }
    
    var body: some View {
        VStack {
            Text("value:\(value.wrappedValue)")
            ViewPresent(value: value)
                .frame(width: 100, height: 50)
        }
        .navigationBarTitle("详情页")
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail(CountWrapper(count: 6))
    }
}
