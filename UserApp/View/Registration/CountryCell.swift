//
//  CountryCell.swift
//  UserApp
//
//  Created by jizan k on 07/06/24.
//

import SwiftUI

struct CountryCell: View {
    
    var body: some View {
        ZStack(alignment: .bottom){
            VStack(spacing: 10){
                HStack{
                    Image("CountryFlag")
                        .resizable()
                        .frame(width: 50,height: 40)
                        .scaledToFit()
                    Spacer()
                        .frame(width: 50)
                    Text("Bahamas")
                        .font(.custom("Roboto-Regular", size: 20))
                    Spacer()
                    Text("+1242")
                        .font(.custom("Roboto-Regular", size: 20))
                }
                .padding()
                .frame(width: UIScreen.main.bounds.width,height: 40)
                
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(height: 1)
            }
            .padding()
        }
        .frame(height: 55)
    }
}

#Preview {
    CountryCell()
}
