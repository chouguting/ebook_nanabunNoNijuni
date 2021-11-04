//
//  Introduction227View.swift
//  eBook_227
//
//  Created by 周固廷 on 2021/10/30.
//

import SwiftUI

struct Introduction227View: View {
    var body: some View {
        ScrollView(.vertical) {
            HeaderPhotoFlow()
            Text("22/7（日語讀作ナナブンノニジュウニ，即七分之二十二）是由秋元康與ANIPLEX、索尼音樂聯手組成綜合企劃的虛擬偶像組合，並有動畫等衍生作品。").padding()
            Text("2016年10月17日，AKB48等企劃的綜合製作人秋元康宣布發表虛擬偶像企劃。成員由8人組成，角色設計由動畫界的創作者擔當。").padding()
            Text("2016年12月24日，從13250名參選者中海選出12人作為企劃的初步入選者，同時，企劃的名稱“22/7”正式公開。").padding()
            Text("偶像團體的名稱源於圓周率的“約率”22/7。團體的概念是，“從0中產生1的時候，對不存在的事物、尚未見到的事物的相信之力是必要的。22/7是想像的象徵。究竟是有著怎樣的含義呢？答案就在未來”。").padding()
            Text("除此之外22/7的角色設定及其世界觀也與其他的類偶像動畫有著較大的不同。在ACG設定中，11位性格各異的少女都是事務所聽從“牆壁”的指令，從四面八方先後召集來，並組成偶像團體22/7的。在經過了各種磨合與成長後，22/7眾人聽從“牆壁”的指令，轉入了演藝培育學院——六番町學院，並在各種各樣的競爭下再次成長。").padding()
            Text(" 本文引自萌娘百科(https://zh.moegirl.org.cn )").padding()
            Link(destination: URL(string: "https://nanabunnonijyuuni.com/s/n129/?ima=4621")!) {
                Text("更多內容").font(.title2)
            }
            
        }.navigationTitle("22/7介紹")
        
    }
}

struct Introduction227View_Previews: PreviewProvider {
    static var previews: some View {
        Introduction227View()
    }
}

struct HeaderPhotoFlow: View {
    var body: some View {
        TabView {
            ForEach(0 ..< 5){
                i in
                Image("headerImage\(i)").resizable().scaledToFit().frame(height:200)
            }
        }.frame(height:200).tabViewStyle(.page)
        
    }
}
