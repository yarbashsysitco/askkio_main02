import SwiftUI

struct User: Identifiable {
    var id = UUID()
    var langCode: String
    var language: String
    let color: Color
}

struct LanguageSelectionCellUI: View {
    let users = [
        User(langCode: "EN", language: "English", color: .gray),
        User(langCode: "TL", language: "Filipino", color: .black),
        User(langCode: "ID", language: "bahasa indonesia", color: .blue),
        User(langCode: "DE", language: "German", color: .purple),
        User(langCode: "BN", language: "Bengali", color: .pink),
        User(langCode: "ES", language: "Español", color: .cyan),
        User(langCode: "FA", language: "Persian", color: .orange),
        User(langCode: "IT", language: "italiano", color: .yellow),
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(users) { user in
                    HStack {
                        ZStack {
                            Circle()
                                .fill(user.color)
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
