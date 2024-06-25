//
//  ProfileHomePage.swift
//  UserApp
//
//  Created by jizan k on 11/06/24.
//

import SwiftUI

struct ProfileHomePage: View {
    @StateObject private var viewModel = ProfileHomePageViewModel()
    var body: some View {
        NavigationView{
            VStack(spacing: 0) {
                ZStack(alignment: .top) {
                    ScrollView(showsIndicators: false) {
                        GeometryReader { geometry in
                            Color.clear
                                .onChange(of: geometry.frame(in: .global).minY) { minY in
                                    if minY < 0 {
                                        withAnimation {
                                            viewModel.isScrolling = true
                                        }
                                    } else {
                                        withAnimation {
                                            viewModel.isScrolling = false
                                        }
                                    }
                                }
                        }
                        .frame(height: 0)
                        
                        VStack(spacing: 0) {
                            Spacer().frame(height: 120)
                            
                            Userdetails()
                            WalletbalanceView()
                            VStack {
                                HStack {
                                    Text("General Settings")
                                        .font(.custom("Poppins-Semibold", size: 18))
                                    Spacer()
                                }
                            }
                            .offset(y: -50)
                            .padding(.leading, 25)
                            VStack {
                                ForEach(viewModel.generalList, id: \.id) { Glists in
                                    ProfileSettingsUI(settings: Glists)
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width)
                            .offset(y: -30)
                            
                            VStack {
                                HStack {
                                    Text("Account Setting")
                                        .font(.custom("Poppins-Semibold", size: 18))
                                    Spacer()
                                }
                            }
                            .offset(y: -5)
                            .padding(.leading, 25)
                            VStack {
                                ForEach(viewModel.accountSettingsList1, id: \.id) { Glists in
                                    ProfileSettingsUI(settings: Glists)
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width)
                            .offset(y: 5)
                            
                            VStack {
                                Rectangle()
                                    .foregroundColor(.white)
                                    .frame(height: 50)
                                    .overlay(
                                        HStack {
                                            Spacer().frame(width: 20)
                                            Image("ic_pf_finger-print")
                                                .resizable()
                                                .frame(width: 40, height: 40)
                                            Spacer().frame(width: 20)
                                            Toggle("Enable Face ID/Touch ID", isOn: $viewModel.isSwitchOn)
                                                .tint(Color.green)
                                            Spacer().frame(width: 10)
                                            Image("optional")
                                                .resizable()
                                                .renderingMode(.template)
                                                .foregroundColor(Color.accentColor)
                                                .frame(width: 30, height: 30)
                                                .padding(.trailing, 15)
                                        }
                                    )
                            }
                            .offset(y: 10)
                            VStack {
                                ForEach(viewModel.accountSettingsList2, id: \.id) { Glists in
                                    ProfileSettingsUI(settings: Glists)
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width)
                            .offset(y: 15)
                            
                            VStack {
                                HStack {
                                    Text("Payment")
                                        .font(.custom("Poppins-Semibold", size: 18))
                                    Spacer()
                                }
                            }
                            .offset(y: 40)
                            .padding(.leading, 25)
                            VStack {
                                ForEach(viewModel.paymentList, id: \.id) { Glists in
                                    ProfileSettingsUI(settings: Glists)
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width)
                            .offset(y: 55)
                            
                            VStack {
                                HStack {
                                    Text("Favourite Locations")
                                        .font(.custom("Poppins-Semibold", size: 18))
                                    Spacer()
                                }
                            }
                            .offset(y: 75)
                            .padding(.leading, 25)
                            VStack {
                                ForEach(viewModel.favouriteLocationsList, id: \.id) { Glists in
                                    ProfileSettingsUI(settings: Glists)
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width)
                            .offset(y: 85)
                            
                            VStack {
                                HStack {
                                    Text("Support")
                                        .font(.custom("Poppins-Semibold", size: 18))
                                    Spacer()
                                }
                            }
                            .offset(y: 105)
                            .padding(.leading, 25)
                            VStack {
                                ForEach(viewModel.supportList, id: \.id) { Glists in
                                    ProfileSettingsUI(settings: Glists)
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width)
                            .offset(y: 115)
                            
                            VStack {
                                HStack {
                                    Text("Others")
                                        .font(.custom("Poppins-Semibold", size: 18))
                                    Spacer()
                                }
                            }
                            .offset(y: 145)
                            .padding(.leading, 25)
                            
                            VStack {
                                Rectangle()
                                    .foregroundColor(.white)
                                    .frame(height: 50)
                                    .overlay(
                                        HStack {
                                            Spacer().frame(width: 20)
                                            Image("ic_pf_logout")
                                                .resizable()
                                                .frame(width: 40, height: 40)
                                            Spacer().frame(width: 20)
                                            Text("Logout")
                                            Spacer()
                                            Button(action: {
                                                
                                            }, label: {
                                                Image("ic_arrow_right 1")
                                                    .resizable()
                                                    .renderingMode(.template)
                                                    .foregroundColor(.gray)
                                                    .frame(width: 30, height: 30)
                                                    .padding(.trailing, 15)
                                            })
                                        }
                                    )
                                Rectangle()
                                    .foregroundColor(Color(red: 0.946, green: 0.946, blue: 0.946))
                                    .frame(height: 150)
                                
                            }
                            .offset(y: 155)
                        }
                    }
                    
                    TopBar(isScrolling: $viewModel.isScrolling)
                        .frame(height: 120)
                        .background(Color.accentColor)
                        .zIndex(1) 
                }
                Spacer()
            }
            .background(Color(red: 0.946, green: 0.946, blue: 0.946))
            .edgesIgnoringSafeArea(.top)
        }
        .navigationViewStyle(.stack)
       }
 }

#Preview {
    ProfileHomePage()
}

struct TopBar: View {
    @Binding var isScrolling: Bool
    @State var edituishow = false
    var body: some View {
        ZStack {
            VStack {
                Rectangle()
                    .foregroundColor(Color.accentColor)
                    .overlay(
                        HStack {
                            if isScrolling {
                                Image("ic_profile_user")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .padding(.top, 50)
                                    .background(
                                        Circle()
                                            .foregroundColor(.gray)
                                            .overlay(
                                                Circle()
                                                    .stroke(Color.white, lineWidth: 2)
                                            )
                                            .frame(width: 42, height: 42)
                                            .padding(.top, 50)
                                    )
                                Spacer().frame(width: 15)
                                Text("Deepika Padkon")
                                    .foregroundColor(.white)
                                    .font(.custom("Poppins-Regular", size: 18))
                                    .padding(.top, 50)
                            }
                        })
            }
            .frame(height: 120)

            HStack {
                Spacer()
                Button(action: {
                    edituishow = true
                }, label: {
                    Image("ic_pf_edit")       .renderingMode(.template)  .foregroundColor(.white)
                })
                .fullScreenCover(isPresented: $edituishow, content: {
//                    EditprofileUI(viewModel: $viewModel.edituishow)
                })
            }
            .padding(.top, 40)
            .padding(.trailing, 20)
            .transition(.move(edge: .trailing))
        }
    }
}


struct Userdetails: View {
    @State private var popscreen = false
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
                                popscreen = true
                            }, label: {
                                Image("ic_error")
                                    .resizable()
                                    .background(Color.white)
                                    .cornerRadius(11)
                                    .frame(width: 20,height: 20)
                            })
                            .alert(isPresented: $popscreen) {
                                        Alert(
                                            title: Text("Alert Title"),
                                            message: Text("This is the alert message."),
                                            primaryButton: .default(Text("OK")),
                                            secondaryButton: .cancel()
                                        )
                                    }
//                            if popscreen{
//                                VerifyEmailPopUp()
//                            }
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
                        .padding([.leading,.trailing],40)
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

struct CustomAlertModifier<AlertContent: View>: ViewModifier {
    @Binding var isPresented: Bool
    let alertContent: () -> AlertContent

    func body(content: Content) -> some View {
        ZStack {
            content
                .blur(radius: isPresented ? 2 : 0)

            if isPresented {
                alertContent()
                    .transition(.scale)
            }
        }
    }
}

extension View {
    func customAlert<AlertContent: View>(isPresented: Binding<Bool>, @ViewBuilder alertContent: @escaping () -> AlertContent) -> some View {
        self.modifier(CustomAlertModifier(isPresented: isPresented, alertContent: alertContent))
    }
}

