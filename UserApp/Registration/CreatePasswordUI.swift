//
//  CreatePasswordUI.swift
//  testsui
//
//  Created by Apple on 08/06/24.
//

import SwiftUI

struct CreatePasswordUI: View {
    @Environment(\.dismiss) private var dismiss
    @State private var PasswordText: String = ""
    @State private var isPasswordVisible: Bool = false
    @State private var isTextFieldEmpty: Bool = true
    var body: some View {
        NavigationView{
            VStack{
                VStack(alignment: .leading,spacing: 0){
                    HStack{
                        Button {
                            dismiss()
                        } label: {
                            Circle()
                                .foregroundColor(Color.white)
                                .shadow(color: .gray, radius: 4)
                                .opacity(5)
                                .frame(width: 50,height: 60)
                                .overlay(
                                    Image("ic_nav_bar_back")
                                        .resizable()
                                        .frame(width: 20,height: 25)
                                )
                        }
                        Spacer()
                    }
                    .padding(.leading,25)
                    .padding(.top,70)
                    
                    Spacer()
                        .frame(height: 45)
                    Text("Create Password")
                        .font(.custom("Poppins-Medium", size: 28))
                        .padding(.leading,30)
                    
                    Spacer()
                        .frame(height: 50)
                    HStack{
                        if isPasswordVisible{
                            TextField("Password", text: $PasswordText, onEditingChanged: { editing in
                                isTextFieldEmpty = PasswordText.isEmpty})
                            .font(.custom("Poppins-Regular", size: 20))
                            .padding(.leading,30)
                        }else{
                            SecureField("Password", text: $PasswordText, onCommit: {
                                isTextFieldEmpty = PasswordText.isEmpty
                            })                            .font(.custom("Poppins-Regular", size: 20))
                                .padding(.leading,30)
                        }
                        Button {
                            isPasswordVisible.toggle()
                            isTextFieldEmpty = PasswordText.isEmpty
                        } label: {
                            Image(isPasswordVisible ? "openeye" : "closeeye")
                                .resizable()
                                .frame(width: 30,height: 25)
                        }
                        .padding(.trailing,25)
                        
                    }
                    Rectangle()
                        .foregroundColor(isTextFieldEmpty ? Color.black : Color.blue)
                        .opacity(0.5)
                        .frame(height: 2)
                        .padding([.leading,.trailing],25)
                        .padding(.top,10)
                    
                    Spacer()
                    NavigationLink(destination: EnterNameUI()) {
                        VStack {
                            Spacer()
                            HStack {
                                Spacer()
                                Circle()
                                    .fill(Color.cyan)
                                    .stroke(Color.cyan, lineWidth: 2.0)
                                    .shadow(radius: 5)
                                    .frame(width: 70, height: 70)
                                    .overlay(
                                        Image("nextBarButton")
                                            .renderingMode(.template)
                                            .resizable()
                                            .foregroundColor(.white)
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 25, height: 25)
                                    )
                            }
                            .padding(.trailing, 25)
                            .padding(.bottom, 25)
                        }
                    }

                }
                Spacer()
            }
            .edgesIgnoringSafeArea(.all)
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    CreatePasswordUI()
}

