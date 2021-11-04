//
//  MoreView.swift
//  eBook_227
//
//  Created by 周固廷 on 2021/10/30.
//

import SwiftUI

struct VideoView: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    NavigationLink {
                        VideoPickerView(title: "那一天的她們",videoListToPick: Video.videoList)
                    } label: {
                        Text("那一天的她們")
                    }
                    
                    Link(destination: URL(string: "https://ani.gamer.com.tw/animeVideo.php?sn=14542")!) {
                        Text("TV動畫")
                    }

                } header: {
                    Text("動畫").font(.title2)
                }
                
                Section {

                    Link(destination: URL(string: "https://nanabunnonijyuuni.com/s/n129/page/tv_archive")!) {
                        Text("22/7計算中")
                    }
                    Link(destination: URL(string: "https://nanabunnonijyuuni.com/s/n129/diary/tv/list?ima=0154")!) {
                        Text("22/7檢算中")
                    }
                    
                } header: {
                    Text("節目").font(.title2)
                }
                
                Section {
                    NavigationLink {
                        YTVideoPlayerView(ytLinkID: "gdQfY1uf2xM")
                    }label: {
                        Text("LIVE")
                    }
                    
                } header: {
                    Text("LIVE").font(.title2)
                }

                
            }.navigationTitle("影片")
        }
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
