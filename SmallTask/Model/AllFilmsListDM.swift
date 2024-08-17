//
//  AllFilmsListDM.swift
//  SmallTask
//
//  Created by Azimjon Abdurasulov on 17/08/24.
//

import Foundation

struct AllFilmsListDM: Identifiable {
    let id: String
    var title: String
    var director: String
    var releaseDate: String
    var episodeID: Int
    var openingCrawl: String
    var characterConnection: [CharactersDM]
}

struct CharactersDM: Identifiable {
    let id: String
    let name: String
    let birthYear: String
    let gender: String
}
