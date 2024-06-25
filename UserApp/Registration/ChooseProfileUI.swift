//
//  ChooseProfileUI.swift
//  testsui
//
//  Created by Apple on 08/06/24.
//

import SwiftUI


    struct ChooseProfileUI: View {
        @ObservedObject var viewModel = chooseProfileViewModel()
        
            var body: some View {
                NavigationView {
                    VStack {
                        VStack(alignment: .leading, spacing: 0) {
                            HStack {
                                Button(action: {
                                    viewModel.dismiss()
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
                            
                            Text("Choose your profile type option.")
                                .font(.custom("Poppins-Medium", size: 27))
                                .padding(.leading, 30)
                            
                            Spacer().frame(height: 30)
                            
                            ProfileSelectionRow(title: "Resident of Bahamas", isSelected: viewModel.selection == "Resident") {
                                viewModel.selectProfile("Resident")
                            }
                            
                            Spacer().frame(height: 20)
                            
                            ProfileSelectionRow(title: "Tourist", isSelected: viewModel.selection == "Tourist") {
                                viewModel.selectProfile("Tourist")
                            }
                            
                            Spacer()
                            
                            NavigationLink(destination: EmailAddressUI()) {
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

        struct ProfileSelectionRow: View {
            let title: String
            let isSelected: Bool
            let action: () -> Void
            
            var body: some View {
                HStack {
                    Button(action: action) {
                        Image(isSelected ? "ic_list_true" : "circle 1")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(Color.accentColor)
                            .foregroundColor(Color.cyan)
                            .frame(width: 30, height: 30)
                    }
                    .padding(.leading, 30)
                    
                    Spacer().frame(width: 10)
                    
                    Text(title)
                        .font(.custom("Roboto-Medium", size: 21))
                }
            }
    }


#Preview {
    ChooseProfileUI()
}

