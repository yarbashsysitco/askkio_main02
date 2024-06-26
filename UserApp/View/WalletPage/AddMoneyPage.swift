//
//  AddMoneyPage.swift
//  UserApp
//
//  Created by jizan k on 25/06/24.
//

import SwiftUI

struct AddMoneyPage: View {
    @State private var price: Double = 0.00
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            
            VStack {
                Spacer()
                    .frame(height: 30)
                Text("Add Money")
                    .font(.custom("Poppins-Semibold", size: 20))
                
                Spacer().frame(height: 15)
                
                Text("Choose or enter amount")
                    .font(.custom("Poppins-Regular", size: 16))
                    .foregroundColor(.gray)
                
                Spacer().frame(height: 20)
                PriceIncrementView(price: $price)
                
                Text("XCD")
                    .font(.custom("Poppins-Regular", size: 18))
                    .foregroundColor(.gray)
                    .padding(.top, -25)
                
                PriceSelectionView(price: $price)
               
                Spacer().frame(height: 20)
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    RoundedRectangle(cornerRadius: 5)
                        .foregroundColor(Color(hex: "#00AAD6"))
                        .frame(width: 350,height: 50)
                        .overlay(
                            Text("DONE")
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
        Spacer()
            .background(Color.black)
            .opacity(0.8)
    }
}

#Preview {
    AddMoneyPage()
}



struct PriceIncrementView: View {
    @Binding var price: Double
    var body: some View {
        HStack{
            Button(action: {
                if price > 0 {
                price -= 1.00
              }
                
            }, label: {
                Image("ic_minusmoney")
                    .renderingMode(.template)
                    .resizable()
                    .foregroundColor(Color(hex: "#00AAD6"))
                    .frame(width: 50,height: 50)
            })
            Spacer().frame(width: 60)
            
            Text(String(format: "%.2f", price))
                .font(.custom("Poppins-Regular", size: 30))
            
            Spacer().frame(width: 60)
            Button(action: {
                price += 1.00
            }, label: {
                Image("ic_addmoney")
                    .renderingMode(.template)
                    .resizable()
                    .foregroundColor(Color(hex: "#00AAD6"))
                    .frame(width: 50,height: 50)
            })
        }
        .padding([.leading,.trailing],30)
    }
}

struct PriceSelectionView: View {
    @Binding var price: Double
    var body: some View {
        HStack{
            Button(action: {
                price += 10.00
            }, label: {
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(Color(red: 0.891, green: 0.891, blue: 0.891))
                    .frame(width: 65,height: 35)
                    .overlay(
                        ZStack{
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.gray, lineWidth: 1)
                            Text("10")
                                .font(.custom("Poppins-Regular", size: 14))
                                .foregroundColor(.black)
                        }
                    )
            })
            
            Spacer().frame(width: 20)
            Button(action: {
                price += 15.00
            }, label: {
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(Color(red: 0.891, green: 0.891, blue: 0.891))
                    .frame(width: 65,height: 35)
                    .overlay(
                        ZStack{
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.gray, lineWidth: 1)
                            Text("15")
                                .font(.custom("Poppins-Regular", size: 14))
                                .foregroundColor(.black)
                        }
                    )
            })
            
            Spacer().frame(width: 20)
            Button(action: {
                price += 20.00
            }, label: {
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(Color(red: 0.891, green: 0.891, blue: 0.891))
                    .frame(width: 65,height: 35)
                    .overlay(
                        ZStack{
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.gray, lineWidth: 1)
                            Text("20")
                                .font(.custom("Poppins-Regular", size: 14))
                                .foregroundColor(.black)
                        }
                    )
            })
        }
        .padding([.leading,.trailing],80)
    }
}
