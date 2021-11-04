//
//  SongListView.swift
//  eBook_227
//
//  Created by 周固廷 on 2021/11/1.
//

import SwiftUI
import AVFoundation

struct SongListView: View {
    let title:String
    let songList:[Song]
    static let player = AVPlayer()
    
    var body: some View {
        List {
            ForEach(songList){
                item in
                Button(item.songName) {
                    let fileUrl = Bundle.main.url(forResource: item.fileName, withExtension: item.fileType)!
                    let playerItem = AVPlayerItem(url: fileUrl)
                    SongListView.player.replaceCurrentItem(with: playerItem)
                    SongListView.player.play()
                }
            }
        }.navigationTitle(title)
    }
}

struct SongListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SongListView(title:"Test",songList: [.demoSong,.demoSong])
        }
    }
}
