//
//  AlbumView.swift
//  eBook_227
//
//  Created by 周固廷 on 2021/11/1.
//

import SwiftUI

struct AlbumView: View {
    let albums=[
        Album.bokuWaSonzaiShiteinakatta,
        Album.shampooNoNioiGaShita,
        Album.rikaisha,
        Album.naniMoShiteagerarenai,
        Album.kazeWafuiteruKa,
        Album.bokuGaMotteruMonoNara,
        Album.kakusei
    ]
    var body: some View {
        ScrollView(.vertical) {
            let columns = [GridItem(.adaptive(minimum: 160),spacing: 0)]
            LazyVGrid(columns: columns) {
                ForEach(albums){
                    item in
                    NavigationLink {
                        SongListView(title: item.albumName, songList: item.songList)
                    } label: {
                        AlbumCoverView(album: item)
                    }
                }
            }
        }.navigationTitle("專輯/EP")
    }
}

struct AlbumView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumView()
    }
}
