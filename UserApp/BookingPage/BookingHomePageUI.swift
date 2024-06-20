//
//  BookingHomePageUI.swift
//  UserApp
//
//  Created by admin on 20/06/24.
//
//
//import SwiftUI
//
//struct BookingHomePageUI: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}

#Preview {
    BookingHomePageUI()
}
import SwiftUI

struct BookingHomePageUI: View {
    @State private var selectedTab: String = "Bookings" // Current active tab

    var body: some View {
        VStack {
            TopVie(selectedTab: $selectedTab)

            // Content based on selected tab
            if selectedTab == "Bookingsss" {
                Text("Bookings Content") // Example content for Bookings tab
                    // Add your specific UI elements here for the "Bookings" tab
            } else if selectedTab == "My Orders" {
                Text("My Orders Content") // Example content for My Orders tab
                    // Add your specific UI elements here for the "My Orders" tab
            } else if selectedTab == "Bide" {
                Text("Bide Content") // Example content for Bide tab
                    // Add your specific UI elements here for the "Bide" tab
            }
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct TopVie: View {
    @Binding var selectedTab: String

    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(Color.accentColor)
                .frame(height: 140)
                .overlay(
                    HStack {
                        Spacer().frame(width: 90)
                        Text("My Bookings")
                            .font(.custom("Roboto-Regular", size: 20))
                            .foregroundColor(.white)
                            .padding(.top,20)
                            .frame(maxWidth: .infinity, alignment: .center)
                        Spacer()
                        Button(action: {
                        }, label: {
                            Image(systemName: "line.3.horizontal")
                                .resizable()
                            
                                .renderingMode(.template)
                                .foregroundColor(.white)
                                .frame(width: 30,height: 30)
                                .padding(.top,20)
                                .padding(.trailing,20)
                      
                        })
                    }
                )

            ZStack {
                Rectangle()
                    .frame(height: 50)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    .shadow(radius: 5)
                    .overlay(
                        HStack {
                            Spacer().frame(width: 18)
                            Button(action: {
                                selectedTab = "Bookings" // Update selected tab state
                            }) {
                                Rectangle()
                                    .cornerRadius(20)
                                    .frame(width: 120, height: 40)
                                    .foregroundColor(selectedTab == "Bookings" ? .accentColor : .white)
                                    .overlay(
                                        Text("Bookings")
                                            .foregroundColor(selectedTab == "Bookings" ? .white : .black)
                                    )
                            }
                            Spacer().frame(width: 2)

                            Button(action: {
                                selectedTab = "My Orders" // Update selected tab state
                            }) {
                                Rectangle()
                                    .cornerRadius(20)
                                    .frame(width: 120, height: 40)
                                    .foregroundColor(selectedTab == "My Orders" ? .accentColor : .white)
                                    .overlay(
                                        Text("My Orders")
                                            .foregroundColor(selectedTab == "My Orders" ? .white : .black)
                                    )
                            }
                            Spacer().frame(width: 2)

                            Button(action: {
                                selectedTab = "Bide" // Update selected tab state
                            }) {
                                Rectangle()
                                    .cornerRadius(20)
                                    .frame(width: 120, height: 40)
                                    .foregroundColor(selectedTab == "Bide" ? .accentColor : .white)
                                    .overlay(
                                        Text("Bide")
                                            .foregroundColor(selectedTab == "Bide" ? .white : .black)
                                    )
                            }
                            Spacer().frame(width: 18)
                        }
                    )
                    .padding(.top, -35)
                    .padding(.horizontal, 10)
            }
        }
    }
}
