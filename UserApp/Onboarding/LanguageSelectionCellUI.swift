import SwiftUI

struct LanguageSelectionCellUI: View {
    @StateObject private var viewmodel = LanguageSelectionCellViewModel()
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(viewmodel.users, id: \.id) { user in
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
