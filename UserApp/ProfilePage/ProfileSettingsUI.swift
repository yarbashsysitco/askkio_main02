//
//  ProfileSettingsUI.swift
//  UserApp
//
//  Created by jizan k on 11/06/24.
//

import SwiftUI


struct ProfileSettingsUI: View {
    var settings: ProfileSettingsData
    var body: some View {
        ZStack(alignment: .bottom) {
            Rectangle()
                .foregroundColor(.white)
                .frame(height: 50)
                .overlay(
                    HStack{
                        Spacer()
                            .frame(width: 20)
                        Image(settings.imageName)
                            .resizable()
                            .frame(width: 40,height: 40)
                        Spacer()
                            .frame(width: 20)
                        Text(settings.category)
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            Image("ic_arrow_right 1")
                                .resizable()
                                .renderingMode(.template)
                                .foregroundColor(.gray)
                                .frame(width: 30,height: 30)
                        })
                    }
                )
        }
        .frame(height: 45)
    }
}

#Preview {
    ProfileSettingsUI(settings: GeneralList[0])
}
