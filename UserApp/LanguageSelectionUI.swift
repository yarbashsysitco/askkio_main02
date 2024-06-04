//
//  LanguageSelectionUI.swift
//  UserApp
//
//  Created by jizan k on 30/05/24.
//

import SwiftUI

struct LanguageSelectionUI: View {
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                       
                            }) {
                                ZStack {
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 50, height: 50)
                                    
                                    Image("Close")
                                   
                                }
                            }                }
                .padding([.top, .trailing], 20)
                
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
        }
        .background(Color.clear)
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
