//
//  Video.swift
//  eBook_227
//
//  Created by 周固廷 on 2021/11/3.
//

import Foundation

struct Video:Identifiable{
    let id=UUID()
    let title:String
    var fileName:String=""
    var isOnline:Bool=false
    var fileType:String=""
    var fileYTid:String=""
}

extension Video{
    
    static let videoList=[Video.TDODD_01,.TDODD_02,.TDODD_03,.TDODD_04,.TDODD_05,.TDODD_06,.TDODD_07,.TDODD_08]
    
    static let TDODD_01=Video(title: "day01 滝川みう", fileName: "TheDiaryofOurDaysDay01MiuTakigawa", fileType: "mp4")
    static let TDODD_02=Video(title: "day02 河野都", fileName: "TheDiaryofOurDaysDay02MiyakoKono", fileType: "mp4")
    static let TDODD_03=Video(title: "day03 立川絢香", fileName: "TheDiaryofOurDaysDay03TachikawaAyaka", fileType: "mp4")
    static let TDODD_04=Video(title: "day04 佐藤麗華", fileName: "TheDiaryofOurDaysDay04ReikaSato", fileType: "mp4")
    static let TDODD_05=Video(title: "day05 斎藤ニコル", fileName: "TheDiaryofOurDaysDay05NicoleSaito", fileType: "mp4")
    static let TDODD_06=Video(title: "day06 丸山あかね", fileName: "TheDiaryofOurDaysDay06Akane", fileType: "mp4")
    static let TDODD_07=Video(title: "day07 戸田ジュン", fileName: "TheDiaryofOurDaysDay07TodaJun", fileType: "mp4")
    static let TDODD_08=Video(title: "day08 藤間桜", fileName: "TheDiaryofOurDaysDay08FujimaSakura", fileType: "mp4")
}
