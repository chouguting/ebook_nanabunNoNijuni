//
//  AlbumCoverView.swift
//  eBook_227
//
//  Created by 周固廷 on 2021/11/1.
//

import SwiftUI

struct AlbumCoverView: View {
    let album:Album
    var body: some View {
        VStack {
            album.albumCoverPhoto.resizable().scaledToFill().frame(width: 160, height: 160, alignment: .center).clipped()

            
        }
    }
}

struct AlbumCoverView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumCoverView(album: .kakusei)
    }
}
