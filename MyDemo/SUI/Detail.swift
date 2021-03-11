//
//  Detail.swift
//  MyDemo
//
//  Created by 黄楠 on 2021/3/11.
//

import SwiftUI

struct Detail: View {
    var body: some View {
        VStack {
            NavigationLink(
                destination: ListPresent().navigationTitle("列表"),
                label: {
                    /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/
                })
            ViewPresent()
                .frame(width: 100, height: 50)
            NavigationLink("我是swiftUI界面，点击我跳转到storyBoard界面", destination: ListPresent())
        }
        .navigationBarTitle("详情页")
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail()
    }
}
