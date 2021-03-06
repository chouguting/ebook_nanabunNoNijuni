//
//  AboutView.swift
//  eBook_227
//
//  Created by 周固廷 on 2021/10/30.
//

import SwiftUI

struct AboutView: View {
    @State private var show = false
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(isActive: $show) {
                    Introduction227View()
                } label: {
                    Text("22/7簡介")
                }.onAppear(perform: {
                    if UIDevice.current.userInterfaceIdiom == .pad {
                        show = true
                    }
                })
                NavigationLink {
                    CharacterView()
                } label: {
                    Text("角色介紹")
                }
            }.navigationTitle("關於")
            Introduction227View()
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
