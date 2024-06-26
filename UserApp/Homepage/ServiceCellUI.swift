//
//  ServiceCellUI.swift
//  UserApp
//
//  Created by jizan k on 18/06/24.
//

import SwiftUI

struct ServiceCellUI: View {
    var serviceDatas: ServiceData
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack{
                Rectangle()
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .shadow(radius: 8)
                    .frame(width: 144,height: 144)
                    .overlay(
                        VStack{
                            Image(serviceDatas.image)
                                .resizable()
                                .frame(width: 50,height: 60)
                            Spacer()
                                .frame(height: 10)
                            Text(serviceDatas.name)
                                .font(.custom("Poppins-Semibold", size: 16))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .padding([.leading,.trailing],10)
                                .frame(height: 45)
                        }
                    )
            }
        }
        .frame(height: 154)
    }
}

#Preview {
    ServiceCellUI(serviceDatas: taxiList[0])
}
