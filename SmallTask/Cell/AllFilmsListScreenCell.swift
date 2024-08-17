//
//  AllFilmsListScreenCell.swift
//  SmallTask
//
//  Created by Azimjon Abdurasulov on 17/08/24.
//

import SwiftUI

struct AllFilmsListScreenCell: View {
    var title: String
    var director: String
    var date: String
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.title2)
            Text("Director: \(director)")
                .font(.subheadline)
            Text("Date: \(date)")
                .font(.caption)
        }
    }
}

#Preview {
    AllFilmsListScreenCell(
        title: "A New Hope",
        director: "George Luca",
        date: "1977-05-25"
    )
    .padding(.horizontal)
}
