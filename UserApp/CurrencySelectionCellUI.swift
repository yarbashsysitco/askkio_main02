import SwiftUI

struct CurrencyItems: Identifiable {
    var id = UUID()
    var langCode: String
    var language: String
    let color: Color
}

struct CurrencySelectionCellUI: View {
    let users = [
        CurrencyItems(langCode: "EN", language: "English", color: .gray),
        CurrencyItems(langCode: "TL", language: "Filipino", color: .black),
        CurrencyItems(langCode: "ID", language: "bahasa indonesia", color: .blue),
        CurrencyItems(langCode: "DE", language: "German", color: .purple),
        CurrencyItems(langCode: "BN", language: "Bengali", color: .pink),
        CurrencyItems(langCode: "ES", language: "Español", color: .cyan),
        CurrencyItems(langCode: "FA", language: "Persian", color: .orange),
        CurrencyItems(langCode: "IT", language: "italiano", color: .yellow),
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(users) { CurrencyItems in
                    HStack {
                        ZStack {
                            Circle()
                                .fill(CurrencyItems.color)
                                .frame(width: 50, height: 50)
                            
                            Text(CurrencyItems.langCode)
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .bold))
                        }
                        Spacer()
                            .frame(width: 20)
                        Text(CurrencyItems.language)
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
    CurrencySelectionCellUI()
}
