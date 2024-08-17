//
//  FilimDetailScreenCell.swift
//  SmallTask
//
//  Created by Azimjon Abdurasulov on 17/08/24.
//

import SwiftUI

struct FilimCharcterCell: View {
    var data: CharactersDM
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Circle()
                .fill(Color.gray.opacity(0.4))
                .frame(width: 100, height: 100)
            textView(text: "Name:", value: data.name)
            textView(text: "BirthYear:", value: data.birthYear)
            textView(text: "Gender:", value: data.gender)
        }
        .frame(width: 150, alignment: .leading)
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }

    private func textView(text: String, value: String) -> some View {
        HStack(spacing: 4) {
            Text(text)
                .fontWeight(.medium)
            Text(value)
        }
        .font(.system(size: 14))
    }
}

#Preview {
    ZStack {
        Color.gray.ignoresSafeArea()
        FilimCharcterCell(
            data: CharactersDM(
                id: "123",
                name: "Azimjon",
                birthYear: "29-01-1999",
                gender: "male"
            )
        )
    }
}
