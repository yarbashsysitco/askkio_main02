import SwiftUI

struct PrivacyPolicyUI: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
            VStack(spacing: 0) {
                VStack(alignment: .leading) {
                HStack{
                     Rectangle()
                    .foregroundColor(Color.accentColor)
                     .frame(height: 120)
                        .overlay(
                                HStack {
                                    Button(action: {
                                        self.presentationMode.wrappedValue.dismiss()
                                        }, label: {
                                            Image("ic_nav_bar_back")
                                                        .resizable()
                                                        .renderingMode(.template)
                                                        .foregroundColor(.white)
                                                        .frame(width: 25, height: 24)
                                                        .padding(.leading, 30)
                                                })
                                        
                                    Spacer()
                                        .frame(width: UIScreen.main.bounds.width/4)
                                                Text("Support")
                                        .font(.custom("Poppins-Regular", size: 23))
                                                    .foregroundColor(.white)
                                                    .font(.headline)
                                          Spacer()
                                            }
                                    .padding(.top,60)
                                        )

                                }
                }
                
                VStack(alignment: .leading, spacing: 0) {
                    Button(action: {
                        // Action for Privacy Policy
                    }) {
                        Rectangle()
                            .frame(width: UIScreen.main.bounds.width, height: 70)
                            .foregroundColor(Color.white)
                            .overlay(
                                HStack {
                                    Image("lock")
                                        .resizable()
                                        .frame(width: 30,height: 35)
                                    Spacer().frame(width: 20)
                                    Text("Privacy Policy")
                                        .foregroundColor(Color.black)
                                        .font(.custom("Poppins-Regular", size: 20))
                                    Spacer()
                                }
                                .padding(.leading, 30)
                            )
                    }

                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray)
                        .padding(.leading, 30)
                    
                    Spacer().frame(height: 1)

                    Button(action: {
                        // Action for Terms & Conditions
                    }) {
                        Rectangle()
                            .frame(width: UIScreen.main.bounds.width, height: 70)
                            .foregroundColor(Color.white)
                            .overlay(
                                HStack {
                                    Image("book")
                                        .resizable()
                                        .frame(width: 30,height: 35)
                                    Spacer().frame(width: 20)
                                    Text("Terms & Conditions")
                                        .foregroundColor(Color.black)
                                        .font(.custom("Poppins-Regular", size: 20))
                                    Spacer()
                                }
                                .padding(.leading, 30)
                            )
                    }

                    Rectangle()
                        .frame(height: 0.5)
                        .foregroundColor(.gray)
                        .padding(.leading, 30)
                }
                Spacer()
            
            }
            .edgesIgnoringSafeArea(.all)
            
        }
    }


#Preview {
    PrivacyPolicyUI()
}
