//
//  FilimDetailScreen.swift
//  SmallTask
//
//  Created by Azimjon Abdurasulov on 17/08/24.
//

import SwiftUI

struct FilimDetailScreen: View {
    var item: AllFilmsListDM
    var body: some View {
        resultBody
            .background(Color.gray.ignoresSafeArea().opacity(0.2))
            .navigationTitle(item.title)
    }

    @ViewBuilder
    private var resultBody: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading, spacing: 24) {
                VStack(alignment: .leading, spacing: 16) {
                    keyTextView(key: "Director", value: item.director)
                    keyTextView(key: "Date", value: item.releaseDate)
                    keyTextView(key: "episodeID", value: "\(item.episodeID)")
                    VStack(alignment: .leading, spacing: 16) {
                        Text("OpeningCrawl:")
                            .fontWeight(.medium)
                            .font(.title2)
                        Text(item.openingCrawl)
                    }
                }
                NavigationLink {
                    CharactersListScreen(data: item.characterConnection)
                } label: {
                    Text("Characters here:")
                        .font(.system(size: 20, weight: .bold))
                }

                CharacterHGridView(data: Array(item.characterConnection.prefix(4)))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }
    }

    private func keyTextView(key: String, value: String) -> some View {
        HStack(spacing: 6) {
            Text("\(key):")
                .fontWeight(.medium)
            Text(value)
        }
        .font(.title2)
    }
}

#Preview {
    FilimDetailScreen(
        item: AllFilmsListDM(
            id: "123",
            title: "title",
            director: "Director",
            releaseDate: "12-232-323",
            episodeID: 2,
            openingCrawl: "sdsd sdsd /sdsdsd sdsdsd sdsd sd",
            characterConnection: [CharactersDM(
                id: "123",
                name: "Azimjon",
                birthYear: "29-01-1999",
                gender: "male"
            )]
        )
    )
}
