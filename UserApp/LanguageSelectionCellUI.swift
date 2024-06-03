//
//  LanguageSelectionCellUI.swift
//  UserApp
//
//  Created by jizan k on 03/06/24.
//
import SwiftUI

struct User: Identifiable {
    var id = UUID()
    var langCode: String
    var language: String
}

struct LanguageSelectionCellUI: View {
    let users = [
        User(langCode: "EN", language: "English"),
        User(langCode: "TL", language: "Filipino"),
        User(langCode: "ID", language: "bahasa indonesia"),
        User(langCode: "DE", language: "German"),
        User(langCode: "BN", language: "Bengali"),
        User(langCode: "ES", language: "Espamol"),
        User(langCode: "FA", language: "Persian"),
        User(langCode: "IT", language: "italiano"),
    ]
    var body: some View {
        HStack{
            ZStack{
                Circle()
                    .fill(Color.pink)
                    .frame(width: 50, height: 50)
                
                Text(users[0].langCode)
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .bold))
            }
            Spacer()
                .frame(width: 20)
            Text(users[0].language)
                .font(.system(size: 20,weight: .semibold))
            Spacer()
            
        }
    }
}


#Preview {
    LanguageSelectionCellUI()
}
