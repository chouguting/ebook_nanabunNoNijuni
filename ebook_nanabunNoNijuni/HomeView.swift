//
//  HomeView.swift
//  eBook_227
//
//  Created by 周固廷 on 2021/10/30.
//

import SwiftUI

struct HomeView: View {
    @State var off_X=0.0
    @State var off_Y=0.0
    @State var rotation=0.0
    @State var show=false
    var body: some View {
        VStack{
            if(show){
                TabView {

                    Image("227logo")
                        .resizable()
                        .scaledToFit()
                        .frame(maxHeight: 200, alignment: .center)
                        .offset(x:off_X, y: off_Y)
                        .rotationEffect(Angle(degrees: rotation))
                        .animation(.default,value: off_X)
                        .onTapGesture {
                            off_X=Double.random(in: -(UIScreen.screenWidth/2.0)...(UIScreen.screenWidth/2.0))
                        off_Y=Double.random(in: -(UIScreen.screenHeight/2.0)...(UIScreen.screenHeight/2.0))
                        }
                    ForEach(1 ..< 4){
                        i in
                        Image("home_pic\(i)").resizable().scaledToFit()
                    }
                    
                    Text("????").font(.title).padding(20).background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                    

                    Text("你").font(.title).foregroundColor(.blue).underline() + Text("還想要") +
                    Text("更多嗎？？？？")
                    .font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.orange).italic()
                    
                    Text("但是 NO!!").font(.custom("Nagurigaki-Crayon", size: 30))
                    VStack {
                        Text("這是分隔線").spectialStyle()
                        Divider()
                    }
                    
                    ZStack {
                        Image("227logo")

                        Text("OK??")
                            .padding(30)
                            .background(.thinMaterial)
                    }
                    

                }.tabViewStyle(.page(indexDisplayMode: .never)).transition(.scale(scale: 10))
            }
            
//            if(show){
//                Image("227logo").resizable().scaledToFit().frame(maxHeight: 200, alignment: .center).transition(.scale(scale: 60))
//            }
            
            
        }.animation(.easeIn(duration: 1), value: show)
        .onAppear {
            show=true
        }
    }
}

extension Text {
    func spectialStyle() -> some View {
        self
            .font(.custom("Nagurigaki-Crayon", size: 30))
            .shadow(radius: 20)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            
    }
}

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}
