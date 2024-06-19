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
                    .shadow(radius: 4)
                    .frame(width: 130,height: 170)
                    .overlay(
                        VStack{
                            Image(serviceDatas.imageName)
                                .resizable()
                                .frame(width: 90,height: 90)
                            Text(serviceDatas.category)
                                .font(.custom("Poppins-Medium", size: 16))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                        }
                    )
            }
        }
        .frame(height: 190)
    }
}

#Preview {
    ServiceCellUI(serviceDatas: TaxiList[0])
}
