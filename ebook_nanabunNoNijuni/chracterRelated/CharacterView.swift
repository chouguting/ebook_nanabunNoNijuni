//
//  CharacterView.swift
//  eBook_227
//
//  Created by 周固廷 on 2021/10/30.
//

import SwiftUI

struct CharacterView: View {
    let characterList=[
        Character.todaJun,
        Character.konoMiyako,
        Character.satoReika,
        Character.saitoNocole,
        Character.takigawaMiu,
        Character.tachikawaAyaka,
        Character.fujimaSakura,
        Character.maruyamaAkane,
        Character.kamikiMikami,
        Character.tojoYuki,
        Character.hiiragiTsubomi
    ]
    var body: some View {
        List{
            ForEach(characterList) {
                character in
                NavigationLink {
                    CharacterDetailView(character: character)
                } label: {
                    CharacterInfoRow(character: character)
                }

                
            }
            
        }.navigationTitle("角色介紹")
    }
}

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            CharacterView()
        }
        
            
    }
}
