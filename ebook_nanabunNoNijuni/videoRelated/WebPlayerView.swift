//
//  VideoPlayerView.swift
//  eBook_227
//
//  Created by 周固廷 on 2021/11/3.
//

import SwiftUI
import WebKit

struct WebPlayerView: UIViewRepresentable {
    
    let webUrl:String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let url=URL(string: webUrl) else{ return }
        //uiView.scrollView.isScrollEnabled=false
        uiView.load(URLRequest(url: url))
        SongListView.player.pause()
    }
}

struct WebPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        WebPlayerView(webUrl: "https://www.youtube.com/watch?v=lKGDCoRjlCk")
    }
}
