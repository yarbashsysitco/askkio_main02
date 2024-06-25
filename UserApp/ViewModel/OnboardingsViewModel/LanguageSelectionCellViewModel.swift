//
//  LanguageSelectionCellViewModel.swift
//  UserApp
//
//  Created by jizan k on 21/06/24.
//

import Foundation

class LanguageSelectionCellViewModel: ObservableObject{
    let users = [
        LanguageSelectionModel(langCode: "EN", language: "English", color: .gray),
        LanguageSelectionModel(langCode: "TL", language: "Filipino", color: .black),
        LanguageSelectionModel(langCode: "ID", language: "bahasa indonesia", color: .blue),
        LanguageSelectionModel(langCode: "DE", language: "German", color: .purple),
        LanguageSelectionModel(langCode: "BN", language: "Bengali", color: .pink),
        LanguageSelectionModel(langCode: "ES", language: "Español", color: .cyan),
        LanguageSelectionModel(langCode: "FA", language: "Persian", color: .orange),
        LanguageSelectionModel(langCode: "IT", language: "italiano", color: .yellow),
    ]
}
