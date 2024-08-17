//
//  CharactersListScreen.swift
//  SmallTask
//
//  Created by Azimjon Abdurasulov on 17/08/24.
//

import SwiftUI

struct CharactersListScreen: View {
    var data: [CharactersDM]
    @State private var filtredData: [CharactersDM] = []
    @State private var searchText: String = ""
    var body: some View {
        VStack {
            CharacterVGridView(data: filtredData)
        }
        .background(Color.gray.ignoresSafeArea().opacity(0.2))
        .onChange(of: searchText, perform: { _ in searchCharacter() })
        .onAppear(perform: { filtredData = data })
        .searchable(text: $searchText)
    }

    private func searchCharacter() {
        if searchText.isEmpty {
            filtredData = data
        } else {
            filtredData = data.filter { $0.name.lowercased().contains(searchText.lowercased()) }
        }
    }
}

#Preview {
    CharactersListScreen(data: [CharactersDM(id: "123", name: "aa", birthYear: "123123", gender: "232")])
}
