//
//  CharacterVGridView.swift
//  SmallTask
//
//  Created by Azimjon Abdurasulov on 17/08/24.
//

import SwiftUI

struct CharacterVGridView: View {
    var data: [CharactersDM]
    var row: [GridItem] = Array(repeating: GridItem(spacing: 16), count: 2)
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: row, spacing: 16, content: {
                ForEach(data) { item in
                    FilimCharcterCell(
                        data: CharactersDM(
                            id: item.id,
                            name: item.name,
                            birthYear: item.birthYear,
                            gender: item.gender
                        )
                    )
                }
            })
            .padding(.horizontal)
        }
    }
}

#Preview {
    CharacterVGridView(data: [
        CharactersDM(id: "123", name: "aa", birthYear: "123123", gender: "232"),
        CharactersDM(id: "32", name: "aa4444", birthYear: "123144423", gender: "232444"),
    ])
}
