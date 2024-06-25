//
//  CountrySelectionViewModel.swift
//  UserApp
//
//  Created by jizan k on 21/06/24.
//

import Foundation

class CountrySelectionViewModel: ObservableObject {
    @Published var searchCountryText: String = ""
    @Published var countries: [Country] = []

    func fetchCountries() {
        self.countries = [
            Country(name: "Country 1"),
            Country(name: "Country 2"),
        ]
    }
}
