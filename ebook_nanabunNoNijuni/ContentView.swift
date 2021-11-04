//
//  ContentView.swift
//  eBook_227
//K
//  Created by 周固廷 on 2021/10/30.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        TabView {
            HomeView().tabItem {
                Label("首頁",systemImage: "house")
            }
            MusicView().tabItem {
                Label("音樂",systemImage: "music.note")
            }
            VideoView().tabItem {
                Label("影片",systemImage: "play.tv")
            }
            AboutView().tabItem {
                Label("關於",systemImage: "questionmark.circle.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
