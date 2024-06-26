//
//  LoginOptionsUI.swift
//  UserApp
//
//  Created by jizan k on 07/06/24.
//

import SwiftUI

struct LoginOptionsUI: View {
    @Environment(\.dismiss) var dismiss
    @Binding var showlogScreen: Bool
    var body: some View {
        VStack {
            VStack{
                HStack {
                    Spacer()
                    Button {
                        dismiss()
                    } label: {
                        Circle()
                            .foregroundColor(Color.white)
                            .shadow(color: .gray, radius: 4)
                            .opacity(5)
                            .frame(width: 50,height: 60)
                            .overlay(
                                Image("Close")
                                    .resizable()
                                    .frame(width: 25,height: 25)
                            )
                      }
                    
                  }
                .padding(.trailing,30)

                
                    VStack(alignment: .leading) {
                        Spacer()
                            .frame(height: 20)
                        Text("Choose an account")
                            .font(.system(size: 22))
                            .fontWeight(.bold)
                            .frame(width: UIScreen.main.bounds.width,height: 25,alignment: .leading)
                    }
                    .padding(.leading,40)
                    
                    Spacer().frame(height: 35)
                    Applelogo()
                    Spacer().frame(height: 35)
                    Googlelogo()
                    Spacer().frame(height: 35)
                    Facebooklogo()
                    Spacer().frame(height: 15)
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray)
                        .padding([.leading,.trailing],20)
                    Spacer().frame(height: 15)
                    Idview()
                    HStack{
                        Text("This option will be activated once you logged into an application")
                            .foregroundColor(.gray)
                            .font(.custom("Poppins-Medium", size: 14))
                            .opacity(0.8)
                    }
                    .padding([.leading,.trailing],25)
                }
//            .offset(y: UIScreen.main.bounds.height / 8)
//        .frame(width: UIScreen.main.bounds.width)
   
        }
    }
}

#Preview {
    LoginOptionsUI(showlogScreen: .constant(true))
}

struct Applelogo: View {
    var body: some View {
        HStack(alignment: .center) {
            HStack{
                RoundedRectangle(cornerRadius: 5.0)
                    .overlay(
                        Image("applelogo")
                            .resizable()
                            .frame(width: 50,height: 50)
                    )
                    .frame(width: 55,height: 55)
                
                Spacer()
                    .frame(width: 30)
                Text("Apple")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
            }
            .padding(.leading,25)
            Spacer()
        }
    }
}

struct Googlelogo: View {
    var body: some View {
        HStack(alignment: .center) {
            HStack{
                RoundedRectangle(cornerRadius: 5.0)
                    .overlay(
                        Image("googlelogo")
                            .resizable()
                        .frame(width: 50,height: 50)
                    )
                    .foregroundColor(Color(red: 0.252, green: 0.545, blue: 0.824))
                    .frame(width: 55,height: 55)
                
                Spacer()
                    .frame(width: 30)
                Text("Google")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
            }
            .padding(.leading,25)
            Spacer()
        }
    }
}

struct Facebooklogo: View {
    var body: some View {
        HStack(alignment: .center) {
            HStack{
                RoundedRectangle(cornerRadius: 5.0)
                    .overlay(
                        Image("facebooklogo")
                            .resizable()
                        .frame(width: 50,height: 50)
                    )
                    .foregroundColor(Color(red: 0.27, green: 0.342, blue: 0.571))
                    .frame(width: 55,height: 55)
                
                Spacer()
                    .frame(width: 30)
                Text("Facebook")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
            }
            .padding(.leading,25)
            Spacer()
        }
    }
}

struct Idview: View {
    var body: some View {
        HStack(alignment: .center){
            HStack{
                Image("ic_biometric")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(Color(red: 0.838, green: 0.838, blue: 0.842))
                    .frame(width: 60,height: 60)
                Spacer()
                    .frame(width: 20)
                Text("Enable Face ID/Touch ID")
                    .font(.custom("Poppins-Semibold", size: 19))
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                    .opacity(0.3)
            }
            .padding(.leading,25)
            Spacer()
        }
    }
}
