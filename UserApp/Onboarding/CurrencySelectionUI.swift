//
//  CurrencySelectionUI.swift
//  UserApp
//
//  Created by jizan k on 05/06/24.
//

import SwiftUI

struct CurrencySelectionUI: View {
    @Environment(\.presentationMode) var presentationMode
    @StateObject private var viewModel = CurrencySelectionUiViewModel()
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        viewModel.dismissView(presentationMode: presentationMode)
                    }) {
                        ZStack {
                            Circle()
                                .fill(Color.white)
                                .frame(width: 50, height: 50)
                            
                            Image("Close")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                    }
                    .padding([.top, .trailing], 20)
                }
                .background(Color(hue: 1.0, saturation: 0.019, brightness: 0.736, opacity: 0.015))
                .frame(width: UIScreen.main.bounds.width)
                
                VStack(alignment: .leading) {
                    Text(viewModel.titleText.capitalized)
                        .font(.system(size: 20, weight: .semibold))
                    
                    Spacer()
                        .frame(height: 7)
                    
                    Text(viewModel.bottomText)
                        .font(.system(size: 16, weight: .regular))
                    
                    Spacer()
                        .frame(height: 10)
                }
                .padding(.leading, 30)
                .frame(width: UIScreen.main.bounds.width, height: 80, alignment: .leading)
                
                Spacer()
                LanguageSelectionCellUI()
            }
        }
        .background(Color.clear)
    }
}

#Preview {
    CurrencySelectionUI()
}
