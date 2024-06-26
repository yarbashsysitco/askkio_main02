//
//  CreatePasswordUI.swift
//  testsui
//
//  Created by Apple on 08/06/24.
//

import SwiftUI

struct EnterNameUI: View {
    @Environment(\.dismiss) private var dismiss
    @StateObject private var viewmodel = EnterNameViewModel()
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
                    Text("What's your name?")
                        .font(.custom("Poppins-Medium", size: 27))
                        .padding(.leading,30)
                    
                    Spacer()
                        .frame(height: 50)
                    HStack{
                        TextField("First Name", text: $viewmodel.frstname)
                            .font(.custom("Poppins-Regular", size: 18))
                            .padding(.leading,30)
                        Spacer()
                            .frame(width: 10)
                        TextField("Last Name", text: $viewmodel.lastname)
                            .font(.custom("Poppins-Regular", size: 18))
                        //                        .padding(.leading,30)
                    }
                    HStack {
                        Rectangle()
                            .foregroundColor(Color.black)
                            .opacity(0.5)
                            .frame(width: 150,height: 2)
                            .padding(.leading,25)
                            .padding(.top,10)
                        Spacer()
                            .frame(width: 25)
                        Rectangle()
                            .foregroundColor(Color.black)
                            .opacity(0.5)
                            .frame(width: 150,height: 2)
                            .padding(.top,10)
                    }
                    Spacer()
                    
                    NavigationLink(destination: ChooseProfileUI()){
                        HStack{
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
                        .padding(.trailing,30)
                        .padding(.bottom,35)
                    }
                }
                Spacer()
            }
            .edgesIgnoringSafeArea(.all)
        }
        .navigationViewStyle(.stack)
        .navigationBarBackButtonHidden(true)
}
}

#Preview {
    EnterNameUI()
}
