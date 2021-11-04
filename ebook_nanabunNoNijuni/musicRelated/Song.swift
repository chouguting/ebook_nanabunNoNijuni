//
//  Song.swift
//  eBook_227
//
//  Created by 周固廷 on 2021/11/1.
//

import Foundation
struct Song:Identifiable{
    let id=UUID()
    let songName:String
    let fileName:String
    let fileType:String
    var artist:String=""
    var mvURl:URL = URL(string: "https://nanabunnonijyuuni.com")!
}

extension Song{
    static let allSong=[Song.demoSong,Song.BokuGaMotteruMonoNara,Song.ShampooNoNioiGaShita,.Rikaisya,.NaniMoShiteagerarenai,.Muzui,.BokuGaMotteruMonoNara,.Kakusei]
    static let demoSong=Song.KimiWaMoon
    static let KimiWaMoon=Song(songName: "Kimi wa Moon", fileName: "kimiwamoon", fileType: "mp3")
    static let BokuWaSonzaiShiteinakatta=Song(songName: "僕は存在していなかった", fileName: "BokuWaSonzaiShiteinakatta", fileType: "mp3")
    static let ShampooNoNioiGaShita=Song(songName: "シャンプーの匂いがした", fileName: "ShampooNoNioiGaShita", fileType: "mp3")
    static let Rikaisya=Song(songName: "理解者", fileName: "Rikaisya", fileType: "mp3")
    static let NaniMoShiteagerarenai=Song(songName: "何もしてあげられない", fileName: "NaniMoShiteagerarenai", fileType: "mp3")
    static let Muzui=Song(songName: "ムズイ", fileName: "Muzui", fileType: "mp3")
    static let KazeWaFuiteruKa=Song(songName: "風は吹いてるか?", fileName: "KazeWaFuiteruKa", fileType: "mp3")
    static let BokuGaMotteruMonoNara=Song(songName: "僕が持ってるものなら", fileName: "BokuGaMotteruMonoNara", fileType: "mp3")
    static let Kakusei=Song(songName: "覚醒", fileName: "Kakusei", fileType: "mp3")
    
}
