
import SwiftUI

struct WalletHomePage: View {
    @State private var addMoneySheet = false
    @State private var transferMOneySheet = false
    @State private var selectedButton: String? = "All"
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack {
                HStack(spacing: 0){
                    Rectangle()
                        .foregroundColor(.white)
                    Rectangle()
                        .foregroundColor(Color(hex: "#00AAD6"))
                }
                .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 0){
                    Rectangle()
                        .foregroundColor(Color(hex: "#00AAD6"))
                        .clipShape(RoundedCorner(radius: 25, corners: .bottomLeft))
                        .overlay(
                            VStack {
                                Spacer()
                                    .frame(height: 60)
                                Text("My Wallet")
                                    .foregroundColor(.white)
                                    .font(.custom("Poppins-Regular", size: 23))
                                Spacer()
                                    .frame(height: 5)
                                Text("$ 0.00")
                                    .foregroundColor(.white)
                                    .font(.custom("Poppins-Bold", size: 45))
                                Spacer()
                                    .frame(height: 5)
                                Text("Balance")
                                    .foregroundColor(.white)
                                    .font(.custom("Poppins-Regular", size: 20))
                                Spacer()
                                    .frame(height: 5)
                                GeometryReader { geometry in
                                            ScrollView(.horizontal, showsIndicators: false) {
                                                VStack {
                                                    HStack(spacing: 40) {
                                                        Button(action: {
                                                            addMoneySheet.toggle()
                                                        }, label: {
                                                            Image("ic_wallet_addmoney")
                                                                .resizable()
                                                                .frame(width: 55, height: 55)
                                                        })
                                                        .sheet(isPresented: $addMoneySheet) {
                                                            AddMoneyPage()
                                                            .frame(width: min(UIScreen.main.bounds.width, 800))
                                                               .presentationDetents([.height(UIScreen.main.bounds.height - 500)])
                                                                                                        }
                                                        
                                                        
                                                        Button(action: {
                                                            transferMOneySheet.toggle()
                                                        }, label: {
                                                            Image("ic_wallet_transfer")
                                                                .resizable()
                                                                .frame(width: 55, height: 55)
                                                        })
                                                        .sheet(isPresented: $transferMOneySheet) {
                                                            TranferMoneyPage()
                                                            .frame(width: min(UIScreen.main.bounds.width, 800))
                                                               .presentationDetents([.height(UIScreen.main.bounds.height - 360)])
                                                                                                        }
                                                        
                                                        Button(action: {
                                                            TransactionView()
                                                            
                                                        }, label: {
                                                            Image("ic_wallet_transaction")
                                                                .resizable()
                                                                .frame(width: 55, height: 55)
                                                        })
                                                        
                                                        Button(action: {
                                                            
                                                        }, label: {
                                                            Image("ic_contact_new")
                                                                .resizable()
                                                                .frame(width: 55, height: 55)
                                                        })
                                                    }
                                                    .frame(maxWidth: .infinity)
                                                    .padding(.horizontal, (geometry.size.width - 400) / 2)
                                                    Spacer()
                                                        .frame(height: 15)
                                                    HStack(spacing: 25) {
                                                        Text("Add Money")
                                                            .foregroundColor(.white)
                                                            .font(.custom("Poppins-Regular", size: 14))
                                                        
                                                        Text("Transfer")
                                                            .foregroundColor(.white)
                                                            .font(.custom("Poppins-Regular", size: 14))
                                                        
                                                        Text("Transaction")
                                                            .foregroundColor(.white)
                                                            .font(.custom("Poppins-Regular", size: 14))
                                                        
                                                        Text("Contact Us")
                                                            .foregroundColor(.white)
                                                            .font(.custom("Poppins-Regular", size: 14))
                                                    }
                                                    .frame(maxWidth: .infinity)
                                                    .padding(.horizontal, (geometry.size.width - 380) / 2)
                                                }
                                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                                .background(Color.clear)
                                        
                                            }
                                        }
                            }
                        )
                    
                        .frame(height: 320)
                    Rectangle()
                        .foregroundColor(.white)
                        .clipShape(RoundedCorner(radius: 25, corners: .topRight))
                        .overlay(
                            VStack {
                                HStack{
                                    Text("Recent Transaction")
                                        .font(.custom("Poppins-Semibold", size: 18))
                                    Spacer()
                                    Button(action: {}, label: {
                                        Text("See All")
                                            .font(.custom("Poppins-Semibold", size: 14))
                                            .foregroundColor(Color(hex: "#00AAD6"))
                                        Image("nextBarButton")
                                            .renderingMode(.template)
                                            .resizable()
                                            .foregroundColor(Color(hex: "#00AAD6"))
                                            .frame(width: 6,height: 10)
                                    })
                                }
                                Spacer()
                                    .frame(height: 20)
                                HStack{
                                    Button(action: {
                                        selectedButton = "All"
                                    }, label: {
                                        RoundedRectangle(cornerRadius: 15)
                                            .fill(selectedButton == "All" ? Color(hex: "#00AAD6") : Color.white)
                                            .overlay(
                                            Text("All")
                                                .foregroundColor(selectedButton == "All" ? Color.white : Color.black)
                                                .font(.custom("Roboto-Bold", size: 16))
                                            )
                                            .shadow(radius: 3)
                                            .frame(width: 40,height: 30)
                                        
                                    })
                                    Spacer()
                                        .frame(width: 20)
                                    Button(action: {
                                        selectedButton = "Credit"
                                    }, label: {
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(selectedButton == "Credit" ? Color(hex: "#00AAD6") : Color.white)
                                            .overlay(
                                                HStack{
                                                    Image("ic_credit_new")
                                                        .resizable()
                                                        .frame(width: 18,height: 18)
                                                    Text("Credit")
                                                        .foregroundColor(selectedButton == "Credit" ? Color.white : Color.black)
                                                        .font(.custom("Poppins-Semibold", size: 16))
                                                }
                                            )
                                            .shadow(radius: 3)
                                            .foregroundColor(.white)
                                            .frame(width: 100,height: 30)
                                        
                                    })
                                    Spacer()
                                        .frame(width: 20)
                                    Button(action: {
                                        selectedButton = "Debit"
                                    }, label: {
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(selectedButton == "Debit" ? Color(hex: "#00AAD6") : Color.white)
                                            .overlay(
                                                HStack{
                                                    Image("ic_debit_new")
                                                        .resizable()
                                                        .frame(width: 15,height: 15)
                                                    Text("Debit")
                                                        .foregroundColor(selectedButton == "Debit" ? Color.white : Color.black)
                                                        .font(.custom("Poppins-Semibold", size: 16))
                                                }
                                            )
                                            .shadow(radius: 3)
                                            .foregroundColor(.white)
                                            .frame(width: 100,height: 30)
                                        
                                    })
                                    Spacer()
                                }
                                Spacer()
                            }
                                .padding(.top,40)
                                .padding([.leading,.trailing],20)
                        )
                    
                        .frame(height: UIScreen.main.bounds.height/2)
                }
               
            }
            if addMoneySheet {
            VisualEffectBlur(blurStyle: .systemMaterial) {
                Color.clear
                }
                .edgesIgnoringSafeArea(.all)
                .transition(.opacity)
            }
        }
        .navigationBarBackButtonHidden(true)
        .edgesIgnoringSafeArea(.all)
        .animation(.easeInOut, value: addMoneySheet)
    }
          
}

#Preview {
    WalletHomePage()
}

