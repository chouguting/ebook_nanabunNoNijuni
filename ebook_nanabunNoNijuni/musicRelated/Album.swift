//
//  Album.swift
//  eBook_227
//
//  Created by 周固廷 on 2021/11/1.
//

import Foundation
import SwiftUI
struct Album:Identifiable{
    let id=UUID()
    let albumName:String
    let albumEnglishName:String
    let albumCoverPhoto:Image
    var songList:[Song] = [.demoSong]
}

extension Album{
    static let bokuWaSonzaiShiteinakatta=Album(albumName: "僕は存在していなかった",albumEnglishName: "Boku wa Sonzai Shiteinakatta" ,albumCoverPhoto: Image("BokuWaSonzaiShiteinakatta"),songList: [.BokuWaSonzaiShiteinakatta])
    static let shampooNoNioiGaShita=Album(albumName: "シャンプーの匂いがした", albumEnglishName: "Shampoo no Nioi ga Shita", albumCoverPhoto: Image("ShampooNoNioiGaShita"),songList: [.ShampooNoNioiGaShita])
    static let rikaisha=Album(albumName: "理解者", albumEnglishName: "Rikaisha", albumCoverPhoto: Image("Rikaisha"),songList: [.Rikaisya])
    static let naniMoShiteagerarenai=Album(albumName: "何もしてあげられない", albumEnglishName: "Nani mo Shiteagerarenai", albumCoverPhoto: Image("NaniMoShiteagerarenai"),songList: [.NaniMoShiteagerarenai,.demoSong])
    static let muzui=Album(albumName: "ムズイ", albumEnglishName: "Muzui", albumCoverPhoto: Image("Muzui"))
    static let kazeWafuiteruKa=Album(albumName: "風は吹いてるか?", albumEnglishName: "Kaze wa Fuiteru ka?", albumCoverPhoto: Image("KazeWaFuiteruKa"),songList: [.KazeWaFuiteruKa])
    static let bokuGaMotteruMonoNara=Album(albumName: "僕が持ってるものなら", albumEnglishName: "Boku ga Motteru Mono Nara ", albumCoverPhoto: Image("BokuGaMotteruMonoNara"),songList: [.BokuGaMotteruMonoNara])
    static let kakusei=Album(albumName: "覚醒", albumEnglishName: "Kakusei", albumCoverPhoto: Image("Kakusei"),songList: [.Kakusei])
    
}

