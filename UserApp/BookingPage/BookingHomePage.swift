//
//  BookingHomePage.swift
//  UserApp
//
//  Created by jizan k on 11/06/24.


import SwiftUI

struct BookingHomePage: View {
//    @State private var selectedTab = "Bookings"
    var body: some View {
        VStack {
//            VStack{
//                TopViews(selectedTab: $selectedTab)
//                
//                    .frame(width: UIScreen.main.bounds.width, height: 40)
//                
//                
//            }
//            
//            Spacer()
//            
        }
        Spacer()
    }
}

#Preview {
    BookingHomePage()
}



//struct TopViews: View {
//    @Binding var selectedTab: String
//    @Environment(\.dismiss) var dismiss
//    var body: some View {
//        VStack{
//            Rectangle()
//                .foregroundColor(Color.accentColor)
//                .frame(height: 140)
//                .overlay(
//                    HStack{
//                        Spacer()
//                            .frame(width: 90)
//                        Text("My Bookings")
//                            .font(.custom("Roboto-Regular", size: 20))
//                            .foregroundColor(.white)
//                            .padding(.top,20)
//                            .frame(maxWidth: .infinity, alignment: .center)
//                        Spacer()
//                        Button(action: {
//                            //                            dismiss()
//                        }, label: {
//                            Image(systemName: "line.3.horizontal")
//                                .resizable()
//                            
//                                .renderingMode(.template)
//                                .foregroundColor(.white)
//                                .frame(width: 30,height: 30)
//                                .padding(.top,20)
//                                .padding(.trailing,20)
//                            
//                            
//                            
//                        })
//                    }
//       
//                )
//            
//            ZStack {
//                Rectangle()
//                    .frame(height: 50)
//                    .foregroundColor(.white)
//                    .cornerRadius(20)
//                    .shadow(radius: 5)
//                    .overlay(
//                        HStack {
//                            Spacer().frame(width: 18)
//                            Button(action: {
//                                //                                     selectedTab = "Bookings"
//                            }) {
//                                Rectangle()
//                                    .cornerRadius(20)
//                                
//                                    .frame(width: 120, height: 40)
//                                    .foregroundColor(selectedTab == "Bookings" ? .accentColor : .white)
//                                    .overlay(
//                                        Text("Bookings")
//                                            .foregroundColor(selectedTab == "Bookings" ? .white : .black)
//                                    )
//                            }
//                            
//                            
//                            Spacer().frame(width: 2)
//                            
//                            Button(action: {
//                                selectedTab = "My Orders"
//                            }) {
//                                Rectangle()
//                                    .cornerRadius(20)
//                                    .frame(width: 120, height: 40)
//                                    .foregroundColor(selectedTab == "My Orders" ? .accentColor : .white)
//                                    .overlay(
//                                        Text("My Orders")
//                                            .foregroundColor(selectedTab == "My Orders" ? .white : .black)
//                                    )
//                            }
//                            
//                            Spacer().frame(width: 2)
//                            
//                            Button(action: {
//                                selectedTab = "Bide"
//                            }) {
//                                Rectangle()
//                                    .cornerRadius(20)
//                                    .frame(width: 120, height: 40)
//                                    .foregroundColor(selectedTab == "Bide" ? .accentColor : .white)
//                                    .overlay(
//                                        Text("Bide")
//                                            .foregroundColor(selectedTab == "Bide" ? .white : .black)
//                                        
//                                    )
//                            }
//                            Spacer().frame(width: 18)
//                            
//                        }                    )
//            }
//            .padding(.top, -35)
//            .padding(.horizontal, 10)
//            
//        }
//        .edgesIgnoringSafeArea(.top)
//        
//        
//    }
//}


