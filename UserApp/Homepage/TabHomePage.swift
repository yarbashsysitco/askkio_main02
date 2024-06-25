//
//  TabHomePage.swift
//  UserApp
//
//  Created by jizan k on 11/06/24.
//

import SwiftUI

struct TabHomePage: View {
    var body: some View {
        NavigationView {
            TabView {
                 HomePage()
                     .tabItem {
                         tabContent(imageName: "ic_home", text: "HOME")
                     }

                 BookingHomeMainUI()
                     .tabItem {
                         tabContent(imageName: "ic_home_bookings", text: "BOOKING")
                     }

                 WalletHomePage()
                     .tabItem {
                         tabContent(imageName: "ic_home_wallet", text: "WALLET")
                     }

                 ProfileHomePage()
                     .tabItem {
                         tabContent(imageName: "ic_home_profile", text: "PROFILE")
                     }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationViewStyle(.stack)
     }

     private func tabContent(imageName: String, text: String) -> some View {
         VStack {
             Image(imageName)
                 .renderingMode(.template)
                 .foregroundColor(.blue)
             Text(text)
         }
     }
}

#Preview {
    TabHomePage()
}
