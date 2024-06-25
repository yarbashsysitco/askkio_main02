//
//  CurrencySelectionViewModel.swift
//  UserApp
//
//  Created by jizan k on 21/06/24.
//

import Foundation

class CurrencySelectionViewModel: ObservableObject{
    
    let users = [
        CurrencySelectionModel(langCode: "EN", language: "English", color: .gray),
        CurrencySelectionModel(langCode: "TL", language: "Filipino", color: .black),
        CurrencySelectionModel(langCode: "ID", language: "bahasa indonesia", color: .blue),
        CurrencySelectionModel(langCode: "DE", language: "German", color: .purple),
        CurrencySelectionModel(langCode: "BN", language: "Bengali", color: .pink),
        CurrencySelectionModel(langCode: "ES", language: "Español", color: .cyan),
        CurrencySelectionModel(langCode: "FA", language: "Persian", color: .orange),
        CurrencySelectionModel(langCode: "IT", language: "italiano", color: .yellow)
    ]
}
