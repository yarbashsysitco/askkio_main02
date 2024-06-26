//
//  TransactionView.swift
//  UserApp
//
//  Created by admin on 26/06/24.
//

import SwiftUI

struct TransactionView: View {
    @State private var selectedTab: String = "All"
    @State private var showSheet: Bool = false
    @State private var isPresenting: Bool = false
    @State private var isShowpoup: Bool = false
    
    var body: some View {
        ZStack{
            Color.colorEDEDED
                .ignoresSafeArea(.all)
            VStack {
                TransactionViewTopView(selectedTab: $selectedTab)
        
                Spacer()
                if selectedTab == "All" {
                    VStack {
                        Spacer()
                        Text("No Transaction found.")
                            .font(.custom("Roboto-Regular", size: 18))
                            .fontWeight(.regular)
                        Spacer()
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                } else if selectedTab == "Credit" {
                    VStack {
                        Spacer()
                        Text("No Transaction found.")
                            .font(.custom("Roboto-Regular", size: 18))
                            .fontWeight(.regular)
                        Spacer()
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                } else if selectedTab == "Debit" {
                    VStack {
                        Spacer()
                        Text("No Transaction found.")
                            .font(.custom("Roboto-Regular", size: 18))
                            .fontWeight(.regular)
                        Spacer()
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                Spacer()
                
            }
            .edgesIgnoringSafeArea(.top)
//            .overlay(
//                BottomSheetViews(isShown: $isPresenting, cornerRadius: 12) {
//                    SelectTypeView(isShown: $isPresenting)
//                })
            
            // Bottom sheet for adding new credential
        
            if isShowpoup {
                ZStack{
                    Color.gray.opacity(0.5)
                    VStack{
                        Text("hello")
                        
                    }
                    .background(Color.white)
                    
                }
                .edgesIgnoringSafeArea(.all)
                
            }
            
        }
        
    }
}
#Preview {
    TransactionView()
}

struct TransactionViewTopView: View {
    @Binding var selectedTab: String
    
    var body: some View {
        VStack {
            GeometryReader { geometry in
                VStack {
                    Rectangle()
                        .foregroundColor(Color.accentColor)
                        .frame(height: 140)
                        .overlay(
                            HStack {
                                Button(action: {
                                }, label: {
                                    Image(systemName: "arrow.left")
                                        .resizable()
                                        .renderingMode(.template)
                                        .foregroundColor(.white)
                                        .frame(width: 20, height: 20)
                                        .padding(.top, 20)
                                        .padding(.leading, 20)
                                })

                                Spacer().frame(width: geometry.size.width * 0.1)
                                Text("My Transaction")
                                    .font(.custom("Roboto-Regular", size: 20))
                                    .foregroundColor(.white)
                                    .padding(.top, 20)
                                    .frame(maxWidth: .infinity, alignment: .center)
                                Spacer()
                                Button(action: {
                                }, label: {
                                    Image(systemName: "")
                                        .resizable()
                                        .renderingMode(.template)
                                        .foregroundColor(.white)
                                        .frame(width: 30, height: 30)
                                        .padding(.top, 20)
                                        .padding(.trailing, 20)
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
                                        selectedTab = "All" // Update selected tab state
                                    }) {
                                        Rectangle()
                                            .cornerRadius(20)
                                            .frame(width: geometry.size.width * 0.3, height: 40)
                                            .foregroundColor(selectedTab == "All" ? .accentColor : .white)
                                            .overlay(
                                                Text("All")
                                                    .foregroundColor(selectedTab == "All" ? .white : .black)
                                            )
                                    }
                                    Spacer().frame(width: 2)
                                    
                                    Button(action: {
                                        selectedTab = "Credit" // Update selected tab state
                                    }) {
                                        Rectangle()
                                            .cornerRadius(20)
                                            .frame(width: geometry.size.width * 0.3, height: 40)
                                            .foregroundColor(selectedTab == "Credit" ? .accentColor : .white)
                                            .overlay(
                                                Text("Credit")
                                                    .foregroundColor(selectedTab == "Credit" ? .white : .black)
                                            )
                                    }
                                    Spacer().frame(width: 2)
                                    
                                    Button(action: {
                                        selectedTab = "Debit" // Update selected tab state
                                    }) {
                                        Rectangle()
                                            .cornerRadius(20)
                                            .frame(width: geometry.size.width * 0.3, height: 40)
                                            .foregroundColor(selectedTab == "Debit" ? .accentColor : .white)
                                            .overlay(
                                                Text("Debit")
                                                    .foregroundColor(selectedTab == "Debit" ? .white : .black)
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
            .frame(height: 200)
        }
    }
}
