//
//  AllFilmsListScreen.swift
//  SmallTask
//
//  Created by Azimjon Abdurasulov on 17/08/24.
//

import SwiftUI

struct AllFilmsListScreen: View {
    @StateObject private var viewModel = AllFilmsListScreenVM()

    
    var body: some View {
        NavigationView {
            List(viewModel.filtredData) { item in
                LazyVStack(spacing: 16) {
                    NavigationLink {
                        FilimDetailScreen(item: item)
                    } label: {
                        AllFilmsListScreenCell(
                            title: item.title,
                            director: item.director,
                            date: item.releaseDate
                        )
                    }
                }
            }
            .searchable(text: $viewModel.searchText)
            .onChange(of: viewModel.searchText, perform: { _ in
                viewModel.searchOrderFilter()
            })
            .navigationTitle("All films")
        }
    }
}

#Preview {
    AllFilmsListScreen()
}
