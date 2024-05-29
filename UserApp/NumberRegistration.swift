//
//  NumberRegistration.swift
//  UserApp
//
//  Created by jizan k on 22/05/24.
//

import SwiftUI

struct NumberRegistration: View {
    var body: some View {
            VStack{
                BackButtonClick()
                Spacer()
                    .frame(height: 40)
                TextLbl()
                Spacer()
                    .frame(height: 10)
                CountryLbl()
                Spacer()
                    .frame(height: 1)
                CountryCode()
                Spacer()
                    .frame(height: 1)
                Underline()
                Spacer()
                    .frame(height: 20)
                ChooseOptionLbl()
                Spacer()
                    .frame(height: 20)
                TermsAbdConditionsLbl()
                Spacer()
                }
             VStack {
                Spacer()
                  HStack {
                    Spacer()
                        NavigateButtonClick()
                       }
                   }
             .padding([.bottom, .trailing], 20)
             .navigationBarBackButtonHidden(true)
            }

        }
    
    



#Preview {
    NumberRegistration()
}



struct BackButtonClick: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        HStack{
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Image("ic_nav_bar_back")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20,height: 30)
                    .background(
                        Circle()
                            .fill(Color.white)
                            .stroke(Color.gray, lineWidth: 2.0)
                            .shadow(color: Color.black, radius: 1)
                            .opacity(0.2)
                            .frame(width: 50,height: 60)
                        
                    )
            })
            Spacer()
        }
        .padding(.top,20)
        .padding(.leading,32)
    }
}

struct TextLbl: View {
    var body: some View {
        HStack{
            Text("Enter your mobile number")
                .font(.system(size: 28))
                .fontWeight(.regular)
            Spacer()
        }
        .padding(.top,20)
        .padding(.leading,20)
    }
}

struct CountryLbl: View {
    var body: some View {
        HStack{
            Text("Country")
                .font(.system(size: 18))
                .fontWeight(.regular)
                .foregroundColor(.gray)
            Spacer()
        }
        .padding(.top,10)
        .padding(.leading,20)
    }
}

struct CountryCode: View {
    @State private var MobileText: String = ""
    var body: some View {
        HStack{
            Button(action: {
                
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
            Spacer()
                .frame(width: 50)
                    TextField("Mobile", text: $MobileText)
            
        }
        .padding(.top,5)
        .padding(.leading,20)
        
    }
}

struct Underline: View {
    var body: some View {
        HStack{
            Rectangle()
                .frame(width: 110,height: 1)
                .foregroundColor(.gray)
            Spacer()
                .frame(width: 20)
            Rectangle()
                .frame(height: 1,alignment: .trailing)
                .foregroundColor(.gray)
            Spacer()
        }
        .padding(.top,1)
        .padding(.leading,20)
    }
}

struct ChooseOptionLbl: View {
    var body: some View {
        HStack(spacing:2){
            Text("Or choose other login options")
                .font(.system(size: 18))
                .fontWeight(.regular)
                .foregroundColor(.cyan)
            
            Button(action: {
                
            }, label: {
                HStack {
                    Image("RightArrow")
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.cyan)
                    .frame(width: 20,height: 30)
                }
            })
            Spacer()
        }
        .padding(.top,10)
        .padding(.leading,20)
    }
}

struct TermsAbdConditionsLbl: View {
    var body: some View {
        HStack {
            Button(action: {
                // Action here
            }, label: {
                HStack {
                    Text("By proceeding, I accept the ")
                        .font(.system(size: 14))
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                        + Text("Terms and Conditions & Privacy Policy")
                        .font(.system(size: 14))
                        .fontWeight(.regular)
                        .foregroundColor(.cyan)
                }
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
            })
            Spacer()
        }
        .padding(.leading, 20)

        }

}

struct NavigateButtonClick: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Button(action: {
                    // Your action here
                }, label: {
                    Image("nextBarButton")
                        .renderingMode(.template)
                        .resizable()
                        .foregroundColor(.white)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                        .background(
                            Circle()
                                .fill(Color.cyan)
                                .stroke(Color.cyan, lineWidth: 2.0)
                                .shadow(radius: 5)
                                .frame(width: 60, height: 60)
                        )
                })
                .padding(.trailing, 32)
                .padding(.bottom, 20)
            }
        }
    }
}
