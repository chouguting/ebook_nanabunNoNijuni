//
//  VideoPickerView.swift
//  eBook_227
//
//  Created by 周固廷 on 2021/11/3.
//

import SwiftUI

struct VideoPickerView: View {
    let title:String
    let videoListToPick:[Video]
    var body: some View {
        List {
            ForEach(videoListToPick){
                item in
                
                NavigationLink {
                    if (item.isOnline==true){
                        YTVideoPlayerView(ytLinkID: item.fileYTid,title: item.title)
                    }else{
                        VideoPlayerView(video: item)
                    }
                   
                } label: {
                    Text(item.title)
                }

            }
        }
    }
}

struct VideoPickerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPickerView(title:"video",videoListToPick: Video.videoList)
    }
}
