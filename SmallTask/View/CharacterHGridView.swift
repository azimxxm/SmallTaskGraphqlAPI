//
//  CharacterHGridView.swift
//  SmallTask
//
//  Created by Azimjon Abdurasulov on 17/08/24.
//

import SwiftUI

struct CharacterHGridView: View {
    var data: [CharactersDM]
    var row: [GridItem] = Array(repeating: GridItem(.fixed(250), spacing: 16), count: 2)
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: row, spacing: 16, content: {
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
        }
    }
}

#Preview {
    ZStack {
        Color.gray.opacity(0.3).ignoresSafeArea()
        CharacterHGridView(data: [])
    }
}
