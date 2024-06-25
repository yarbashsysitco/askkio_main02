//
//  CreatePasswordUI.swift
//  testsui
//
//  Created by Apple on 08/06/24.
//

import SwiftUI

struct EmailAddressUI: View {
    @Environment(\.dismiss) private var dismiss
        @ObservedObject private var viewModel = EmailAddressViewModel()
        
        var body: some View {
            NavigationView {
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Button(action: {
                                dismiss()
                            }) {
                                Circle()
                                    .foregroundColor(Color.white)
                                    .shadow(color: .gray, radius: 4)
                                    .opacity(5)
                                    .frame(width: 50, height: 60)
                                    .overlay(
                                        Image("ic_nav_bar_back")
                                            .resizable()
                                            .frame(width: 25, height: 30)
                                    )
                            }
                            Spacer()
                        }
                        .padding(.leading, 25)
                        .padding(.top, 70)
                        
                        Spacer().frame(height: 45)
                        
                        Text("What's your email?")
                            .font(.custom("Poppins-Medium", size: 27))
                            .padding(.leading, 30)
                        
                        Spacer().frame(height: 40)
                        
                        HStack {
                            TextField("Email Address", text: $viewModel.emailText)
                                .font(.custom("Poppins-Regular", size: 20))
                                .padding(.leading, 30)
                        }
                        
                        Rectangle()
                            .foregroundColor(Color.black)
                            .opacity(0.5)
                            .frame(height: 2)
                            .padding([.leading, .trailing], 25)
                            .padding(.top, 10)
                        
                        Spacer()
                        
                        NavigationLink(destination: ReferralCodeUI()) {
                            HStack {
                                Spacer()
                                Circle()
                                    .fill(Color.cyan)
                                    .shadow(radius: 5)
                                    .frame(width: 75, height: 75)
                                    .overlay(
                                        Image("nextBarButton")
                                            .renderingMode(.template)
                                            .resizable()
                                            .foregroundColor(.white)
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 25, height: 25)
                                    )
                            }
                            .padding(.trailing, 30)
                            .padding(.bottom, 35)
                        }
                    }
                    Spacer()
                }
                .edgesIgnoringSafeArea(.all)
                .navigationBarBackButtonHidden(true)
            }
            .navigationViewStyle(.stack)
        }
}

#Preview {
    EmailAddressUI()
}
