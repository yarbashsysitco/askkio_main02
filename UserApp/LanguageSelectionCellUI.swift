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
        User(langCode: "ES", language: "Español"),
        User(langCode: "FA", language: "Persian"),
        User(langCode: "IT", language: "italiano"),
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(users) { user in
                    HStack {
                        ZStack {
                            Circle()
                                .fill(Color.pink)
                                .frame(width: 50, height: 50)
                            
                            Text(user.langCode)
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .bold))
                        }
                        Spacer()
                            .frame(width: 20)
                        Text(user.language)
                            .font(.system(size: 20, weight: .semibold))
                        Spacer()
                        Button(action: {
                            // Add button action here
                        }, label: {
                            Image("circle")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 35, height: 35)
                        })
                    }
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity)
                    .background(Color.clear)
                }
            }
            .background(Color.clear)
            .padding([.leading,.trailing],10)
        }
        .background(Color.clear)
    }
}

#Preview {
    LanguageSelectionCellUI()
}
