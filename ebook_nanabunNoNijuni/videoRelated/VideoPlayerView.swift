//
//  VideoPlayerView.swift
//  eBook_227
//
//  Created by 周固廷 on 2021/11/3.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    let video:Video
    
    var body: some View {
        let avPlayer = AVPlayer(url:  Bundle.main.url(forResource: video.fileName, withExtension: video.fileType)!)
        VideoPlayer(player: avPlayer).navigationTitle(video.title)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView(video: Video.TDODD_01)
    }
}
