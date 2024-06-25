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
            
            Color.white
                .edgesIgnoringSafeArea(.all)

                
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
                .background(Color.white)
                .padding(.top,10)
                .clipShape(RoundedCorner(radius: 30, corners: [.topLeft]))
                .clipShape(RoundedCorner(radius: 30, corners: [.topRight]))
                .edgesIgnoringSafeArea(.bottom)
            }
            
        }
        
    }
//}

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
