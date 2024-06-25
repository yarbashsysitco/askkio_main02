
import SwiftUI

struct CurrencySelectionCellUI: View {
    @StateObject private var currencymodel = CurrencySelectionViewModel()
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(currencymodel.users, id: \.id) { CurrencyItems in
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
