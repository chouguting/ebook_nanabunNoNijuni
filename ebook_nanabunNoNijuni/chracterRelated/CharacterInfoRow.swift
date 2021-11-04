//
//  CharacterInfoRow.swift
//  eBook_227
//
//  Created by 周固廷 on 2021/10/30.
//

import SwiftUI

struct CharacterInfoRow: View {
    let character:Character
    var body: some View {
        HStack(alignment: .center, spacing: 24) {
            character.characterIcon.resizable().frame(width: 90, height: 90)
            VStack(alignment: .leading ) {
                Text(character.name).font(.title)
                Text(character.engName).font(.title2)
            }
        }
    }
}

struct CharacterInfoRow_Previews: PreviewProvider {
    static var previews: some View {
        CharacterInfoRow(character: .demoCharacter)
    }
}
