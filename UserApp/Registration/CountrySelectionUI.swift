//
//  CountrySelectionUI.swift
//  UserApp
//
//  Created by jizan k on 06/06/24.
//

import SwiftUI

struct CountrySelectionUI: View {
    @State private var SearchCountryText: String = ""
    @State private var isEditing: Bool = false
    var body: some View {
        VStack{
            Spacer()
            
            VStack(spacing: 18){
                VStack(alignment: .leading) {
                    Text("Select Country")
                        .font(.system(size: 22))
                    .fontWeight(.bold)
                    .frame(width: UIScreen.main.bounds.width,height: 25,alignment: .leading)
                }
                .padding(.leading,30)
               
                VStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(Color(hex: "#D0D0D5"))
                            .opacity(0.3)
                        .frame(height: 50)
                        
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .renderingMode(.template)
                                .foregroundColor(.gray)
                                .font(.system(size: 20))
                            
                            TextField("Search Country", text: $SearchCountryText)
                                .font(.custom("Roboto-Bold", size: 23))
                                
                                .fontWeight(.semibold)
                        }
                        .padding()
                    }
                    
                }
                .padding([.leading,.trailing],15)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    
                    VStack(){
                         
                    }
                })
            }
        }
        
    }
}

#Preview {
    CountrySelectionUI()
}
