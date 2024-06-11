//
//  ProfileHomePage.swift
//  UserApp
//
//  Created by jizan k on 11/06/24.
//

import SwiftUI

struct ProfileHomePage: View {
    var columns = [GridItem(.adaptive(minimum: UIScreen.main.bounds.width),spacing: 0)]
    var body: some View {
        VStack(spacing: 0){
            TopBar()
            ScrollView{
                VStack(spacing: 0){
                    Userdetails()
                    WalletbalanceView()
                    VStack{
                        HStack {
                            Text("General Settings")
                                .font(.custom("Poppins-Semibold", size: 18))
                            Spacer()
                        }
                    }
                    .offset(y: -50)
                    .padding(.leading,25)
                    VStack{
                        ForEach(GeneralList, id: \.id){ Glists in
                            ProfileSettingsUI(settings: Glists)
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width)
                    .offset(y: -30)
                }
            }
            Spacer()
        }
        .background(Color(red: 0.946, green: 0.946, blue: 0.946))
        .edgesIgnoringSafeArea(.top)
    }
}

#Preview {
    ProfileHomePage()
}

struct TopBar: View {
    var body: some View {
        ZStack {
            VStack {
                Rectangle()
                    .foregroundColor(Color.accentColor)
                    .overlay(
                        HStack{
                            Image("ic_profile_user")
                                .resizable()
                                .frame(width: 50,height: 50)
                                .padding(.top,50)
                                .background(
                                    Circle()
                                        .foregroundColor(.gray)
                                        .overlay(
                                            Circle()
                                                .stroke(Color.white, lineWidth: 2)
                                        )
                                        .frame(width: 52,height: 52)
                                        .padding(.top,50)
                                )
                            Spacer()
                                .frame(width: 15)
                            Text("Deepika Padkon")
                                .foregroundColor(.white)
                                .font(.custom("Poppins-Regular", size: 18))
                                .padding(.top,50)
                            
                        })
            }
            .frame(height: 120)
            
            HStack {
                Spacer()
                Button(action: {
                    
                }, label: {
                    Image("ic_pf_edit")
                        .renderingMode(.template)
                        .foregroundColor(.white)
                    
                })
            }
            .padding(.top,40)
            .padding(.trailing,20)
        }
    }
}

struct Userdetails: View {
    var body: some View {
        VStack{
            Rectangle()
                .foregroundColor(Color.accentColor)
                .frame(width: UIScreen.main.bounds.width,height: 200)
                .overlay(
                    HStack{
                        VStack{
                            Image("ic_profile_user")
                                .resizable()
                                .frame(width: 70,height: 70)
                                .padding(.leading,20)
                                .background(
                                    Circle()
                                        .foregroundColor(.gray)
                                        .overlay(
                                            Circle()
                                                .stroke(Color.white, lineWidth: 2)
                                        )
                                        .frame(width: 72,height: 72)
                                        .padding(.leading,20)
                                )
                            Spacer()
                                .frame(height: 90)
                        }
                        
                        Spacer()
                            .frame(width: 15)
                        VStack(alignment: .leading){
                            Text("Deepika Padkon")
                                .foregroundColor(.white)
                                .font(.custom("Poppins-Medium", size: 20))
                            Text("deepikapadkon@ gmail.com")
                                .foregroundColor(.white)
                                .font(.custom("Poppins-Regular", size: 14))
                            Text("(+1242)1234567891")
                                .foregroundColor(.white)
                                .font(.custom("Poppins-Regular", size: 14))
                            Spacer()
                                .frame(height: 100)
                        }
                        Spacer()
                            .frame(width: 2)
                        VStack{
                            Button(action: {
                                
                            }, label: {
                                Image("ic_error")
                                    .resizable()
                                    .background(Color.white)
                                    .cornerRadius(11)
                                    .frame(width: 20,height: 20)
                            })
                            Spacer()
                                .frame(height: 95)
                        }
                        Spacer()
                    }
                )
        }
    }
}

struct WalletbalanceView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(15)
                .shadow(radius: 5)
                .frame(height: 170)
                .offset(y: -80)
                .padding([.leading,.trailing],25)
                .overlay(
                    VStack {
                        HStack{
                            Text("Wallet Ballence")
                                .font(.custom("Poppins-Semibold", size: 16))
                            Spacer()
                            Text("RD$ 0.00")
                                .foregroundColor(Color.accentColor)
                                .font(.custom("Poppins-Semibold", size: 16))
                        }
                        .padding([.leading,.trailing],50)
                        Rectangle()
                            .foregroundColor(Color(red: 0.942, green: 0.942, blue: 0.942))
                            .frame(height: 1)
                            .padding([.leading,.trailing],25)
                        Spacer()
                            .frame(height: 15)
                        HStack{
                            Circle()
                                .foregroundColor(Color(red: 0.942, green: 0.942, blue: 0.942))
                                .frame(width: 40,height: 40)
                                .overlay(
                                    Image("ic_pf_top_bookings")
                                )
                            Spacer()
                            
                            Circle()
                                .foregroundColor(Color(red: 0.942, green: 0.942, blue: 0.942))
                                .frame(width: 40,height: 40)
                                .overlay(
                                    Image("ic_pf_top_wallet")
                                )
                            Spacer()
                            
                            Circle()
                                .foregroundColor(Color(red: 0.942, green: 0.942, blue: 0.942))
                                .frame(width: 40,height: 40)
                                .overlay(
                                    Image("ic_pf_top_wallettopup")
                                )
                            Spacer()
                            
                            Circle()
                                .foregroundColor(Color(red: 0.942, green: 0.942, blue: 0.942))
                                .frame(width: 40,height: 40)
                                .overlay(
                                    Image("ic_pf_top_Invite")
                                )
                        }
                        .padding([.leading,.trailing],60)
                        Spacer()
                            .frame(height: 20)
                        HStack{
                            Text("Bookings")
                                .font(.custom("Poppins-Regular", size: 13))
                            Spacer()
                            
                            Text("Wallet")
                                .font(.custom("Poppins-Regular", size: 13))
                            Spacer()
                            
                            Text("Top Up")
                                .font(.custom("Poppins-Regular", size: 13))
                            Spacer()
                            
                            Text("Invite")
                                .font(.custom("Poppins-Regular", size: 13))
                        }
                        .padding(.leading,52)
                        .padding(.trailing,60)
                        Spacer()
                    }
                        .offset(y: -60)
                )
        }
    }
}
