//
//  AllFilmsListScreenVM.swift
//  SmallTask
//
//  Created by Azimjon Abdurasulov on 17/08/24.
//

import SmallTaskAPI
import SwiftUI

class AllFilmsListScreenVM: ObservableObject {
    @Published var data: [AllFilmsListDM] = []
    @Published var filtredData: [AllFilmsListDM] = []
    @Published var searchText: String = ""

    init() {
        getAllFilims()
    }

    func getAllFilims() {
        APIManager.getAllFilimsList { [weak self] filims in
            self?.data = filims
            self?.filtredData = filims
        }
    }

    func searchOrderFilter() {
        if searchText.isEmpty {
            filtredData = data
        } else {
            filtredData = data.filter { $0.title.lowercased().contains(searchText.lowercased()) }
        }
    }
}
