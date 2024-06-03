//
//  LanguageSelectionUI.swift
//  UserApp
//
//  Created by jizan k on 30/05/24.
//

import SwiftUI


//struct Corners: Shape {
//    var radius: CGFloat
//    var corners: UIRectCorner
//    func path(in rect: CGRect) -> Path {
//        let path = UIBezierPath(
//            roundedRect: rect,
//            byRoundingCorners: corners,
//            cornerRadii: CGSize(width: radius, height: radius)
//        )
//        return Path(path.cgPath)
//    }
//}
struct User: Identifiable {
    var id = UUID()
    var langCode: String
    var language: String
}

struct LanguageSelectionUI: View {
    
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
        VStack(alignment: .leading){
            titleText
            Spacer()
                .frame(height: 7)
            bottomText
            Spacer()
                .frame(height: 10)
         }
        .frame(maxWidth: .infinity, maxHeight: 50, alignment: .topLeading)
        .padding(.leading,20)
        .padding(.top,20)
          VStack{
                List{
                    ForEach(users) { users in
                        HStack{
                            ZStack{
                                Circle()
                                    .fill(Color.pink)
                                    .frame(width: 50, height: 50)
                                
                                Text(users.langCode)
                                    .foregroundColor(.white
                                    )
                                    .font(.system(size: 18, weight: .bold))
                            }
                            Spacer()
                                .frame(width: 20)
                            Text(users.language)
                                .font(.system(size: 20,weight: .semibold))
                        }
                        .listRowBackground(Color.clear)

                    }
                   
                }
              
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)

         
    }
    var titleText: some View {
        Text("select language".capitalized)
            .font(.system(size: 20,weight: .semibold))
        
    }
    var bottomText: some View {
        Text("Which language do you prefer?")
            .font(.system(size: 16,weight: .regular))
    }
}

#Preview {
    LanguageSelectionUI()
}
