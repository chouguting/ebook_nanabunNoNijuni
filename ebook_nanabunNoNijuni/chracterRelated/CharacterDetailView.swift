//
//  characterDetailView.swift
//  eBook_227
//
//  Created by 周固廷 on 2021/10/31.
//

import SwiftUI

struct CharacterDetailView: View {
    let character:Character
    var body: some View {
        ScrollView() {
            character.characterImage.resizable().scaledToFit().frame(maxHeight:400)
            Text(character.description).font(.title3).padding()
            Spacer()
            Spacer()
            Spacer()
            VStack(alignment: .center) {
                Text("CV: \(character.cvName)").font(.title)
                character.cvImage.resizable().scaledToFit().frame(maxHeight:300)
            }
        }.navigationTitle("\(character.name)的介紹")
    }
}

struct CharacterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetailView(character: .tojoYuki)
    }
}
