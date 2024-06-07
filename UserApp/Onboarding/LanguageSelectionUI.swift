//
//  LanguageSelectionUI.swift
//  UserApp
//
//  Created by jizan k on 30/05/24.
//

import SwiftUI

struct LanguageSelectionUI: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            
            Color.black.opacity(0.1)
                .edgesIgnoringSafeArea(.all)
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
                
                VStack {
                    
                    VStack(alignment: .leading) {
                        titleText
                        Spacer()
                            .frame(height: 7)
                        bottomText
                        Spacer()
                            .frame(height: 10)
                    }
                    .padding(.leading, 30)
                    .frame(width: UIScreen.main.bounds.width, height: 80, alignment: .leading)
                    
                    Spacer()
                    LanguageSelectionCellUI()
                }
                .background(Color.gray)
                .padding(.top,10)
                .clipShape(RoundedCorner(radius: 30, corners: [.topLeft]))
                .clipShape(RoundedCorner(radius: 30, corners: [.topRight]))
                .edgesIgnoringSafeArea(.bottom)
            }
            
        }
        
    }
}

var titleText: some View {
    Text("select language".capitalized)
        .font(.system(size: 20,weight: .semibold))
}

var bottomText: some View {
    Text("Which language do you prefer?")
        .font(.system(size: 16,weight: .regular))
}


#Preview {
    LanguageSelectionUI()
}
