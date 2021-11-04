//
//  musicView.swift
//  eBook_227
//
//  Created by 周固廷 on 2021/10/30.
//

import SwiftUI

struct MusicView: View {
    
    
    let videoList=[
        Video(title: "God knows...", isOnline: true, fileYTid: "qbbEEl3v9DI"),
        Video(title:"花の唄",isOnline: true,fileYTid: "qbbEEl3v9DI"),
        Video(title: "secret base",isOnline: true,fileYTid: "D6cnMkQH8kc"),
        Video(title: "カードキャプターさくら", isOnline: true,fileYTid: "PiD6QnAXa0Q"),
        Video(title: "U.S.A.", isOnline: true,fileYTid: "V5UVI6EVqUs")]
        
    var body: some View {
        
        NavigationView {
            List {
                Section {
                    NavigationLink {
                        AlbumView()
                    } label: {
                        Text("專輯")
                    }
                    NavigationLink {
                        SongListView(title: "所有歌曲", songList: Song.allSong)
                    } label: {
                        Text("所有歌曲")
                    }
                } header: {
                    Text("立即聆聽")
                }
                Section {
                    NavigationLink {
                        VideoPickerView(title: "Youtube翻唱", videoListToPick: videoList)
                    } label: {
                        Text("Youtube翻唱")
                    }
                    Link(destination: URL(string: "https://www.youtube.com/playlist?list=PLV2TGHsmriLHSIrdtlJz2ZmBhLztH_mPY")!) {
                        Text("MV")
                    }
                    Link(destination: URL(string: "https://www.youtube.com/playlist?list=PLV2TGHsmriLGMxWMPc98ANgO3_Dz2oa77")!) {
                        Text("跳舞影片")
                    }

                    
                } header: {
                    Text("音樂影片")
                }
                
                

            }.navigationTitle("音樂")
            AlbumView()
        }
        
        
    }
}

struct MusicView_Previews: PreviewProvider {
    static var previews: some View {
        MusicView()
    }
}
