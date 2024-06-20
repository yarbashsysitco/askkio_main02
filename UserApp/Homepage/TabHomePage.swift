//
//  TabHomePage.swift
//  UserApp
//
//  Created by jizan k on 11/06/24.
//

import SwiftUI

struct TabHomePage: View {
    var body: some View {
        TabView {
            HomePage()
                .tabItem {
                    Image("ic_home")
                        .renderingMode(.template)
                        .foregroundColor(.blue)
                    Text("HOME")
                }

            BookingHomePageUI()
                .tabItem {
                    Image("ic_home_bookings")
                        .renderingMode(.template)
                        .foregroundColor(.blue)
                    Text("BOOKING")
                }

            WalletHomePage()
                .tabItem {
                    Image("ic_home_wallet")
                        .renderingMode(.template)
                        .foregroundColor(.blue)
                    Text("WALLET")
                }

            ProfileHomePage()
                .tabItem {
                    Image("ic_home_profile")
                        .renderingMode(.template)
                        .foregroundColor(.blue)
                    Text("PROFILE")
                }
        }
    }
}

#Preview {
    TabHomePage()
}
