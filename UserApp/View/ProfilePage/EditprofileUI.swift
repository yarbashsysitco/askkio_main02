////
//  EditprofileUI.swift
//  UserApp
//
//  Created by jizan k on 12/06/24.
//

import SwiftUI

struct EditprofileUI: View {
 @ObservedObject var viewModel: EditProfileViewModel
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView{
            ScrollView(showsIndicators: false) {
                VStack(spacing: 0){
                    TopView(viewModel: viewModel, dismiss: { presentationMode.wrappedValue.dismiss() })
                    Spacer().frame(height: 100)
                    VStack{
                        //MARK: - firstname & lastname -------------------------------------
                        HStack{
                            ZStack(alignment: .leading){
                                Text("First Name")
                                    .font(.custom("Roboto-Regular", size: 18))
                                    .foregroundColor(.gray)
                                    .offset(y: viewModel.firstName.isEmpty ? 0 : -20)
                                    .scaleEffect(viewModel.firstName.isEmpty ? 1 : 1.0)
                                TextField("", text: $viewModel.firstName)
                            }
                            Spacer()
                            ZStack(alignment: .leading){
                                Text("Last Name")
                                    .font(.custom("Roboto-Regular", size: 18))
                                    .foregroundColor(.gray)
                                    .offset(y: viewModel.lastName.isEmpty ? 0 : -20)
                                    .scaleEffect(viewModel.firstName.isEmpty ? 1 : 1.0)
                                TextField("", text: $viewModel.lastName)
                            }
                        }
                        .padding([.leading,.trailing],30)
                        
                        HStack{
                            Rectangle()
                                .foregroundColor(.gray)
                                .frame(height: 1)
                            Spacer()
                                .frame(width: 30)
                            Rectangle()
                                .foregroundColor(.gray)
                                .frame(height: 1)
                        }
                        .padding(.leading,30)
                        .padding(.trailing,50)
                        
                        Spacer()
                            .frame(height: 50)
                        //MARK: - emailaddress -----------------------------------------
                        ZStack(alignment: .leading){
                            Text("Email Address")
                                .font(.custom("Roboto-Regular", size: 18))
                                .foregroundColor(.gray)
                                .offset(y: viewModel.emailAddress.isEmpty ? 0 : -18)
                                .scaleEffect(viewModel.emailAddress.isEmpty ? 1 : 1.0)
                            TextField("", text: $viewModel.emailAddress)
                        }
                        
                        
                        .padding([.leading,.trailing],30)
                        Rectangle()
                            .foregroundColor(.gray)
                            .frame(height: 1)
                        
                            .padding(.leading,30)
                            .padding(.trailing,30)
                        Spacer()
                            .frame(height: 40)
                        //MARK: - countrycode and mobile------------------------------------
                        
                        VStack{
                            HStack {
                                Text("Country")
                                    .font(.custom("Roboto-Regular", size: 18))
                                    .foregroundColor(.gray)
                                Spacer()
                            }
                        }
                        .padding(.leading,30)
                        HStack{
                            Button(action: {
                                viewModel.showSheet.toggle()
                            }, label: {
                                HStack {
                                    Image("CountryFlag")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 30,height: 30)
                                    
                                    Text("+1242")
                                        .font(.system(size: 14))
                                        .foregroundColor(.black)
                                }
                            })
                            .sheet(isPresented: $viewModel.showSheet) {
                                CountrySelectionUI()
                                    .frame(width: min(UIScreen.main.bounds.width, 600))
                                    .presentationDetents([.height(UIScreen.main.bounds.height - 200)])
                            }
                            Spacer()
                                .frame(width: 105)
                            ZStack(alignment: .leading){
                                Text("Mobile")
                                    .font(.custom("Roboto-Regular", size: 18))
                                    .foregroundColor(.gray)
                                    .offset(y: viewModel.mobile.isEmpty ? 0 : -20)
                                    .scaleEffect(viewModel.mobile.isEmpty ? 1 : 1.0)
                                TextField("", text: $viewModel.mobile)
                            }
                        }
                        .padding([.leading,.trailing],30)
                        
                        HStack{
                            Rectangle()
                                .foregroundColor(.gray)
                                .frame(height: 1)
                            Spacer()
                                .frame(width: 30)
                            Rectangle()
                                .foregroundColor(.gray)
                                .frame(height: 1)
                        }
                        .padding(.leading,30)
                        .padding(.trailing,30)
                        //MARK: - Language----------------------------------------
                        Spacer()
                            .frame(height: 50)
                        HStack{
                            ZStack(alignment: .leading){
                                Text("Language")
                                    .font(.custom("Roboto-Regular", size: 18))
                                    .foregroundColor(.gray)
                                    .offset(y: viewModel.language.isEmpty ? 0 : -18)
                                    .scaleEffect(viewModel.language.isEmpty ? 1 : 1.0)
                                TextField("", text: $viewModel.language)
                            }
                            Button(action: {
                                
                            }, label: {
                                Image("ic_arrow_down")
                                    .resizable()
                                    .frame(width: 15,height: 15)
                            })
                            
                        }
                        
                        .padding([.leading,.trailing],30)
                        Rectangle()
                            .foregroundColor(.gray)
                            .frame(height: 1)
                        
                            .padding(.leading,30)
                            .padding(.trailing,30)
                        Spacer()
                        //MARK: - Currency--------------------------------------------
                            .frame(height: 50)
                        HStack{
                            ZStack(alignment: .leading){
                                Text("Currency")
                                    .font(.custom("Roboto-Regular", size: 18))
                                    .foregroundColor(.gray)
                                    .offset(y: viewModel.language.isEmpty ? 0 : -18)
                                    .scaleEffect(viewModel.language.isEmpty ? 1 : 1.0)
                                TextField("", text: $viewModel.language)
                            }
                            Button(action: {
                                
                            }, label: {
                                Image("ic_arrow_down")
                                    .resizable()
                                    .frame(width: 15,height: 15)
                            })
                            
                        }
                        
                        .padding([.leading,.trailing],30)
                        Rectangle()
                            .foregroundColor(.gray)
                            .frame(height: 1)
                        
                            .padding(.leading,30)
                            .padding(.trailing,30)
                        Spacer()
                            .frame(height: 40)
                        Button(action: {
                            
                        }, label: {
                            RoundedRectangle(cornerRadius: 5)
                                .foregroundColor(Color(red: 0.287, green: 0.665, blue: 0.844))
                                .frame(height: 60)
                                .padding([.leading,.trailing],25)
                                .overlay(
                                    Text("Update")
                                        .foregroundColor(.white)
                                        .font(.custom("Poppins-Medium", size: 15))
                                )
                        })
                        Spacer()
                    }
                    .offset(y: -70)
                }
            }
            .navigationBarBackButtonHidden(true)
            .edgesIgnoringSafeArea(.top)
            
        }
        .navigationBarBackButtonHidden(true)
        .navigationViewStyle(.stack)
        .background(Color(red: 0.922, green: 0.922, blue: 0.922))
        
    }
}

#Preview {
    EditprofileUI(viewModel: EditProfileViewModel())
}

struct TopView: View {
    @ObservedObject var viewModel: EditProfileViewModel
    var dismiss: () -> Void
    var body: some View {
        VStack{
            Rectangle()
                .foregroundColor(Color(red: 0.287, green: 0.665, blue: 0.844))
                .frame(height: 180)
                .overlay(
                    HStack{
                        Button(action: {
                            dismiss()
                        }, label: {
                            Image("ic_nav_bar_back")
                                .resizable()
                                .renderingMode(.template)
                                .foregroundColor(.white)
                                .frame(width: 30,height: 30)
                            
                        })
                        Spacer()
                            .frame(width: 90)
                        Text("Edit Profile")
                            .font(.custom("Roboto-Regular", size: 20))
                            .foregroundColor(.white)
                        Spacer()
                    }
                        .padding(.leading,30)
                    
                )
            
            ZStack{
                Image("ic_profile_user")
                    .resizable()
                    .frame(width: 130, height: 130)
                    .padding(.top, 50)
                    .background(
                        Circle()
                            .foregroundColor(.gray)
                            .overlay(
                                Circle()
                                    .stroke(Color.white, lineWidth: 4)
                            )
                            .frame(width: 134, height: 134)
                            .padding(.top, 50)
                    )
                    .overlay(
                        Button(action: {
                            
                        }, label: {
                            Circle()
                                .foregroundColor(.white)
                                .shadow(radius: 5)
                                .overlay(
                                    Image("ic_plus")
                                        .resizable()
                                        .renderingMode(.template)
                                        .foregroundColor(Color(red: 0.287, green: 0.665, blue: 0.844))
                                        .frame(width: 35,height: 35)
                                )
                                .frame(width: 40,height: 40)
                                .padding(.top,120)
                                .padding(.leading,110)
                            
                        })
                    )
            }
            .padding(.top,-120)
        }
    }
}

   
