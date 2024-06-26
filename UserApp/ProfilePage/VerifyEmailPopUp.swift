//
//  VerifyEmailPopUp.swift
//  UserApp
//
//  Created by jizan k on 13/06/24.
//

import SwiftUI

struct VerifyEmailPopUp: View {
    @State private var offset: CGFloat = 1000
    @Binding  var isShowpoup: Bool

        var body: some View {
            ZStack {
                VStack{
                        Image("ic_email_New")
                            .resizable()
                        .frame(width: 80,height: 85)
                        .background(
                        Rectangle()
                            .foregroundColor(.accentColor)
                            .frame(width: UIScreen.main.bounds.width,height: 100)
                        )
                    Spacer()
                        .frame(height: 25)
                    Text("VERIFY YOUR EMAIL")
                        .font(.custom("Poppins-Bold", size: 20))
                    Text("Kindly verify your email to get receipt of your trip/jobs/orders.")
                        .font(.custom("Poppins-Regular", size: 18))
                        .multilineTextAlignment(.center)
                Spacer()
                        .frame(height: 40)
                    HStack {
                        Button(action: {
                            close()
                        }, label: {
                            HStack {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(style: StrokeStyle(lineWidth: 2))
                                        .foregroundColor(.accentColor)
                                        .foregroundColor(.white)
                                        
                                    Text("CANCEL")
                                        .font(.custom("Roboto-Bold", size: 20))
                                        .foregroundColor(.accentColor)
                                        .padding()
                                }
                            }
                        })
                        Button(action: {
                            
                            
                        }, label: {
                            HStack {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 10)
                                        .foregroundColor(.accentColor)
                                       
                                        
                                    Text("CONTINUE")
                                        .font(.custom("Roboto-Bold", size: 20))
                                        .foregroundColor(.white)
                                        .padding()
                                }
                              
                            }
                        })
                    }
                }
                .fixedSize(horizontal: false, vertical: true)
                .padding([.leading,.trailing,.bottom],20)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .shadow(radius: 10)
                .padding()
                .offset(x: 0, y: offset)
                .onAppear{
                    withAnimation(.spring()){
                        offset = 0
                    }
            }
        }
        }
    
    func close() {
        
        withAnimation(.spring()){
            offset = 1000
            isShowpoup = false

        }
      }
    }



struct BlurView: UIViewRepresentable{
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
    }
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view =  UIVisualEffectView(effect: UIBlurEffect(style: .systemUltraThinMaterial))
        return view
    }

}
//#Preview {
//    VerifyEmailPopUp(isShowpoup: $isShowpoup)
//}
