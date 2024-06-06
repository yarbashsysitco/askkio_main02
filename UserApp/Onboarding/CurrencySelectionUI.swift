//
//  CurrencySelectionUI.swift
//  UserApp
//
//  Created by jizan k on 05/06/24.
//

import SwiftUI

struct CurrencySelectionUI: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        ZStack {
                            Circle()
                                .fill(Color.white)
                                .frame(width: 50, height: 50)
                            
                            Image("Close")
                            
                        }
                    }
                    .padding([.top, .trailing], 20)
                }
                .background(Color(hue: 1.0, saturation: 0.019, brightness: 0.736, opacity: 0.015))
                .frame(width: UIScreen.main.bounds.width)

                
                VStack(alignment: .leading) {
                    TitleText
                    Spacer()
                        .frame(height: 7)
                    BottomText
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

var TitleText: some View {
    Text("select Currency".capitalized)
        .font(.system(size: 20,weight: .semibold))
}

var BottomText: some View {
    Text("Which currency do you prefer?")
        .font(.system(size: 16,weight: .regular))
}


#Preview {
    CurrencySelectionUI()
}

