//
//  TranferMoneyPage.swift
//  UserApp
//
//  Created by jizan k on 26/06/24.
//

import SwiftUI

struct TranferMoneyPage: View {
   @Environment(\.presentationMode) var presentationMode
    @ObservedObject var viewModel = TransferMoneyViewModel()
    
    var body: some View {
        VStack {
            Spacer().frame(height: 30)
            Text("Send Money")
                .font(.custom("Roboto-Bold", size: 20))
            
            Spacer().frame(height: 5)
            Text("It's safe and secure")
                .font(.custom("Roboto-Regular", size: 20))
                .foregroundColor(.gray)
            
            Spacer().frame(height: 25)
            VStack(alignment: .leading){
                Text("Select the member type to whom you would like to transfer the wallet balance.")
                    .font(.custom("Poppins-Regular", size: 22))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .padding(.leading,25)
                    .padding(.trailing,10)
                Spacer().frame(height: 25)
            HStack{
                   SendMoneyOption(title: "User", isSelected: 
                    viewModel.moneyTranferSelection == "User") {
                    viewModel.selectTransferOption("User")
                    }
                
                    Spacer().frame(width: 50)
                    SendMoneyOption(title: "Provider", isSelected:
                     viewModel.moneyTranferSelection == "Provider") {
                     viewModel.selectTransferOption("Provider")
                     }
                    Spacer()
                }
            }
            Spacer().frame(height: 70)
            VStack {
                ZStack(alignment: .leading){
                    Text("Enter Email or phone")
                        .font(.custom("Roboto-Regular", size: 20))
                        .foregroundColor(viewModel.enterEmail.isEmpty ? .gray : Color(hex: "#00AAD6"))
                        .offset(y: viewModel.enterEmail.isEmpty ? 0 : -25)
                        .scaleEffect(viewModel.enterEmail.isEmpty ? 1 : 1.0)
                    TextField("", text: $viewModel.enterEmail)
            
                }
                Rectangle()
                    .foregroundColor(viewModel.enterEmail.isEmpty ? .gray : Color(hex: "#00AAD6"))
                    .frame(height: 1)
            }
            .padding([.leading,.trailing],30)
            
            Spacer().frame(height: 40)
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 350,height: 50)
                    .overlay(
                        Text("NEXT")
                            .font(.custom("Poppins-Semibold", size: 18))
                            .foregroundColor(.white)
                    )
            })
            .padding([.leading,.trailing],20)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Cancel")
                    .font(.custom("Poppins-Semibold", size: 18))
                    .foregroundColor(.gray)
            })
        }
    }
}

#Preview {
    TranferMoneyPage()
}

struct SendMoneyOption: View {
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
                Spacer().frame(width: 10)
                Text(title)
                    .font(.custom("Poppins-Semibold", size: 25))
                    .foregroundColor(.black)
            }
            .padding(.leading, 35)
           
        }
    }
}

