//
//  Character.swift
//  eBook_227
//
//  Created by 周固廷 on 2021/10/30.
//

import Foundation
import SwiftUI
struct Character:Identifiable{
    let id=UUID()
    let name:String
    let engName:String
    let cvName:String
    let characterIcon:Image
    let characterImage:Image
    let cvImage:Image
    var description:String=""
}

extension Character{
    static let demoCharacter=Character.todaJun
    static let todaJun=Character(name: "戸田ジュン",engName: "TODA JUN", cvName: "海乃るり", characterIcon: Image("todajunIcon"), characterImage:Image("todajunFull"), cvImage: Image("todajunCV"),description: "陽光開朗的女孩子，有時因為開朗過頭了而像個笨蛋一樣。雖然有些孩子氣，但無論何時都會保持率直，拚命努力。喜歡吃零食和油炸食品。座右銘是“人生是遊樂場。來都來了如果不享受就太浪費了”（人生は遊園地。来てしまったら楽しまなければ損だ）。")
    static let konoMiyako=Character(name: "河野都", engName: "KONO MIYAKO", cvName: "倉岡水巴", characterIcon: Image("konoIcon"), characterImage: Image("konoFull"), cvImage: Image("konoCV"),description: "開朗元氣的關西話癆女孩。兄弟姐妹7人中的長女，擅長照顧別人。團隊中的帶動氣氛擔當，可以自己一個人擔當裝傻和吐槽。喜歡看搞笑節目，最喜歡的食物是大阪燒，座右銘是“福臨笑家門（笑う門には福来たる）”。")
    static let saitoNocole=Character(name: "斎藤ニコル", engName: "SAITO NICOLE", cvName: "河瀬詩", characterIcon: Image("saitoIcon"), characterImage: Image("saitoFull"), cvImage: Image("saitoCV"),description: "22/7中的經驗者@絢瀨繪里，克己的努力家。為了成為自己理想中描繪的偶像而每天努力奮鬥。對自己和他人都有嚴格的一面，對周圍人說話有時會不留情面。喜歡偶像、兔子、芭蕾舞、網球。座右銘是“才能只會給予努力的人（才能は努力できる人間こそ与えられる）”。")
    static let satoReika=Character(name: "佐藤麗華", engName: "SATO REIKA", cvName: "(目前沒有)", characterIcon: Image("satoIcon"), characterImage: Image("satoFull"), cvImage: Image(systemName: "person.fill.questionmark"),description: "優等生，22/7的隊長，討厭拐彎抹角的事情。座右銘是心理學家威廉·詹姆斯的名言“改變語言即能改變內心（言葉が変われば心が変わる）”。 愛好玩RPG遊戲和唱歌。喜歡的食物是豆腐。")
    static let takigawaMiu=Character(name: "滝川みう", engName: "TAKIGAWA MIU", cvName: "西條和", characterIcon: Image("takigawaIcon"), characterImage: Image("takigawaFull"), cvImage: Image("takigawaCV"),description: "性格內向，不善與人交流。十分重視與母親和妹妹組成的三口之家。因為母親患病在床而打工貼補家用，後收到經紀公司G.I.P的邀請成為偶像。沒有座右銘，特長是鋼琴。")
    static let tachikawaAyaka=Character(name: "立川絢香", engName: "TACHIKAWA AYAKA", cvName: "宮瀬玲奈", characterIcon: Image("tachikawaIcon"), characterImage: Image("tachikawaFull"), cvImage: Image("tachikawaCV"),description: "性格達觀，我行我素，不被他人左右。雖然性格逞強，但也有關心他人的一面。座右銘是“別人是別人，自己是自己”（他人は他人、自分は自分）。22/7中的性感擔當，成員們的大姐姐一樣的存在。愛好是畫漫畫。也喜歡遊戲、擼貓、看電影、泡澡。喜歡的食物是能量果凍。")
    static let fujimaSakura=Character(name: "藤間桜", engName: "FUJIMA SAKURA", cvName: "天城サリー", characterIcon: Image("fujimaIcon"), characterImage: Image("fujimaFull"), cvImage: Image("fujimaCV"),description: "在洛杉磯長大，自由奔放的歸國子女，英語很流利但不擅長漢字。因為英語很流利，被選作22/7首位出道的YouTuber，擔當22/7的海外宣傳，自稱是英語最強的VTuber。喜歡古典樂，座右銘是西班牙諺語“只要有麵包和紅酒就能前進（Con pan y vino se anda camino.）（パンとワインで進んでいける）。”")
    static let maruyamaAkane=Character(name: "丸山あかね", engName: "MARUYAMA AKANE", cvName: "白沢かなえ", characterIcon: Image("maruyamaIcon"), characterImage: Image("maruyamaFull"), cvImage: Image("maruyamaCV"),description: "冷靜沉著的合理主義者，很少有感情起伏。無論何時都堅持合理的思考方式，對誰都會在溝通中使用敬語，有時會被周圍的人說成很像機器人。表示自己無法理解感情，不擅長唱歌，但喜歡佐藤麗華的歌聲。 擅長料理。愛好是收集浴鹽。座右銘是“唯求變者得生存”（唯一生き残るのは、変化できる者である）。")
    static let kamikiMikami=Character(name: "神木みかみ", engName: "KAMIKI MIKAMI", cvName: "涼花萌", characterIcon: Image("kamikiIcon"), characterImage: Image("kamikiFull"), cvImage: Image("kamikiCV"),description: "心胸開闊，我行我素。性格十分穩重，從不生氣。出生於京都的名家，接受過嚴格的教育，禮儀端正，舉止優美。喜歡鳥。有飼養鸚鵡和鴯鶓。喜歡的食物是和果子和年糕。座右銘是“鳥の上にも３年”。")
    static let tojoYuki=Character(name: "東条悠希", engName: "TOJO YUKI", cvName: "高辻麗", characterIcon: Image("tojoIcon"), characterImage: Image("tojoFull"), cvImage: Image("tojoCV"),description: "表里如一、性格直率的體育系少女。舉止多少有些男孩子氣，自己也覺得扮可愛很困難。擅長運動，喜歡的運動是足球。有興趣的工作是Youtuber。座右銘是“心想事成”。")
    static let hiiragiTsubomi=Character(name: "柊つぼみ", engName: "HIIRAGI TSUBOMI", cvName: "武田愛奈", characterIcon: Image("hiigariIcon"), characterImage: Image("hiigariFull"), cvImage: Image("hiigariCV"),description: "一直悠閒愉快，很能來事兒的典型JK。特技是一秒就能忘記不開心的事情。自稱是澀谷出身、原宿長大的辣妹。雖然平時行事隨便但也想改變自己的辣妹形象。喜歡的食物和飲料是甜麵包、海膽、可爾必思、草莓牛奶。討厭碳酸飲料和冷飲。座右銘是“死亡以外都是擦傷”（死ぬこと以外かすり傷）。")
}
