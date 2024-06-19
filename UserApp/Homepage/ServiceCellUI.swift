//
//  ServiceCellUI.swift
//  UserApp
//
//  Created by jizan k on 18/06/24.
//

import SwiftUI

struct ServiceCellUI: View {
    var serviceDatas: ServiceDatas
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack{
                Rectangle()
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .shadow(radius: 8)
                    .frame(width: 120,height: 160)
                    .overlay(
                        VStack{
                            Image(serviceDatas.imageName)
                                .resizable()
                                .frame(width: 90,height: 90)
                            Text(serviceDatas.category)
                                .font(.custom("Poppins-Semibold", size: 16))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .padding([.leading,.trailing],10)
                        }
                    )
            }
        }
        .frame(height: 170)
    }
}

#Preview {
    ServiceCellUI(serviceDatas: TaxiList[0])
}
