//
//  YTVideoPlayerView.swift
//  eBook_227
//
//  Created by 周固廷 on 2021/11/3.
//

import SwiftUI

struct YTVideoPlayerView: View {
    let ytLinkID:String
    var title:String="Video"
    var body: some View {
        
        VStack {
            WebPlayerView(webUrl: "https://www.youtube.com/embed/\(ytLinkID)").frame(minHeight:0, maxHeight: UIScreen.main.bounds.height*0.7).cornerRadius(12).padding(.horizontal,24).offset(x: 0, y:0)
        }.navigationTitle(title)
            
        
       
    }
}

struct YTVideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        YTVideoPlayerView(ytLinkID: "KELtC1Ca0vc")
    }
}
