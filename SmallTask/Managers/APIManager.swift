//
//  APIManager.swift
//  SmallTask
//
//  Created by Azimjon Abdurasulov on 17/08/24.
//

import Foundation
import SmallTaskAPI

class APIManager {
    static func getAllFilimsList(response: @escaping ([AllFilmsListDM]) -> Void) {
        Network.shared.apollo.fetch(query: AllFilmsListQuery(), cachePolicy: .fetchIgnoringCacheData) { result in
            switch result {
            case let .success(data):
                if let data = data.data?.allFilms?.films { response(convertAllFilmsListDM(data: data)) }
            case let .failure(error):
                debugPrint("Error AllFilmsListQuery ", error.localizedDescription)
            }
        }

        func convertAllFilmsListDM(data: [AllFilmsListQuery.Data.AllFilms.Film?]) -> [AllFilmsListDM] {
            data.compactMap { $0 }.map { item in
                AllFilmsListDM(
                    id: item.id,
                    title: item.title ?? "no title",
                    director: item.director ?? "no director",
                    releaseDate: item.releaseDate ?? "no releaseDate",
                    episodeID: item.episodeID ?? 0,
                    openingCrawl: item.openingCrawl ?? "no openingCrawl",
                    characterConnection: convertCharactersDM(data: item.characterConnection?.characters ?? [])
                )
            }
        }

        func convertCharactersDM(data: [AllFilmsListQuery.Data.AllFilms.Film.CharacterConnection.Character?]) -> [CharactersDM] {
            data.compactMap { $0 }.map { item in
                CharactersDM(
                    id: item.id,
                    name: item.name ?? "no name",
                    birthYear: item.birthYear ?? "no birthYear",
                    gender: item.gender ?? "no gender"
                )
            }
        }
    }
}
