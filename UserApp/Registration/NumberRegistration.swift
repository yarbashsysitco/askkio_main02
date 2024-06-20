import SwiftUI

struct NumberRegistration: View {
    @State private var mobileText: String = ""
    @State private var isInputValid: Bool = true
    @State private var showLoader: Bool = false
    @State private var isNumberRegistrationPresented = false

    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    BackButtonClick()
                    Spacer().frame(height: 40)
                    TextLbl()
                    Spacer().frame(height: 10)
                    CountryLbl()
                    Spacer().frame(height: 1)
                    CountryCode(mobileText: $mobileText, isInputValid: $isInputValid)
                    Spacer().frame(height: 5)
                    Underline(isInputValid: $isInputValid)
                    Spacer().frame(height: 5)
                    ChooseOptionLbl()
                    Spacer().frame(height: 20)
                    TermsAbdConditionsLbl()
                    LoderView(loadingView: $showLoader) // Using showLoader to toggle LoaderView
                    Spacer()
                }
                HStack {
                    Spacer()
                    NavigateButtonClick(mobileText: $mobileText, isInputValid: $isInputValid, showLoader: $showLoader, isNumberRegistrationPresented: $isNumberRegistrationPresented)
                }
                .padding([.bottom, .trailing], 20)
            }
            .contentShape(Rectangle())
            .onTapGesture {
                hideKeyboard()
            }
            .navigationBarHidden(true) // Hide the navigation bar if needed
        }
    }

    private func hideKeyboard() {
        UIApplication.shared.windows.first?.endEditing(true)
    }
}

struct BackButtonClick: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        HStack {
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Image("ic_nav_bar_back")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 30)
                    .background(
                        Circle()
                            .fill(Color.white)
                            .stroke(Color.gray, lineWidth: 2.0)
                            .shadow(color: Color.black, radius: 1)
                            .opacity(0.2)
                            .frame(width: 50, height: 60)
                    )
            })
            Spacer()
        }
        .padding(.top, 20)
        .padding(.leading, 32)
    }
}

struct TextLbl: View {
    var body: some View {
        HStack {
            Text("Enter your mobile number")
                .font(.system(size: 28))
                .fontWeight(.regular)
            Spacer()
        }
        .padding(.top, 20)
        .padding(.leading, 20)
    }
}

struct CountryLbl: View {
    var body: some View {
        HStack {
            Text("Country")
                .font(.system(size: 18))
                .fontWeight(.regular)
                .foregroundColor(.gray)
            Spacer()
        }
        .padding(.top, 10)
        .padding(.leading, 20)
    }
}

struct CountryCode: View {
    @Binding var mobileText: String
    @Binding var isInputValid: Bool
    @State private var showSheet = false

    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    showSheet.toggle()
                }, label: {
                    HStack {
                        Image("CountryFlag")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        
                        Text("+1242")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                    }
                })
                .sheet(isPresented: $showSheet) {
                    CountrySelectionUI()
                        .frame(width: min(UIScreen.main.bounds.width, 600))
                }
                
                Spacer().frame(width: 45)
                
                TextField("Mobile", text: $mobileText)
                    .keyboardType(.numberPad)
                    .onChange(of: mobileText) { newValue in
                        mobileText = newValue.filter { "0123456789".contains($0) }
                    }
                    .submitLabel(.done)
                    .onSubmit {
                        hideKeyboard()
                    }
            }
            .padding(.top, 5)
            .padding(.leading, 20)
        }
    }

    private func hideKeyboard() {
        UIApplication.shared.windows.first?.endEditing(true)
    }
}

struct Underline: View {
    @Binding var isInputValid: Bool

    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .frame(width: 110, height: 1)
                    .foregroundColor(.gray)
                Spacer().frame(width: 10)
                Rectangle()
                    .frame(height: 1, alignment: .trailing)
                    .foregroundColor(.gray)
            }
            .padding(.leading, 20)
            if !isInputValid {
                Text("This field is required.")
                    .foregroundColor(.red)
                    .padding(.leading, 30)
                    .fontWeight(.regular)
                    .font(.system(size: 15))
            }
        }
    }
}

struct ChooseOptionLbl: View {
    var body: some View {
        HStack(spacing: 2) {
            Text("Or choose other login options")
                .font(.system(size: 18))
                .fontWeight(.regular)
                .foregroundColor(.cyan)
            
            Button(action: {
                // Action here
            }, label: {
                HStack {
                    Image("RightArrow")
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.cyan)
                        .frame(width: 20, height: 30)
                }
            })
            Spacer()
        }
        .padding(.top, 10)
        .padding(.leading, 20)
    }
}

struct TermsAbdConditionsLbl: View {
    var body: some View {
        NavigationLink(destination: PrivacyPolicyUI()) {
            HStack {
                Text("By proceeding, I accept the ")
                    .font(.system(size: 14))
                    .fontWeight(.regular)
                    .foregroundColor(.black)
                +
                Text("Terms and Conditions & Privacy Policy")
                    .font(.system(size: 14))
                    .fontWeight(.regular)
                    .foregroundColor(.cyan)
            }
            .multilineTextAlignment(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.leading, 20)
    }
}

struct NavigateButtonClick: View {
    @Binding var mobileText: String
    @Binding var isInputValid: Bool
    @Binding var showLoader: Bool
    @Binding var isNumberRegistrationPresented: Bool

    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                if mobileText.isEmpty {
                    isInputValid = false // Update the validation state
                } else {
                    isInputValid = true // Set validation to true when input is not empty
                    showLoader = true
                    hideKeyboard()
//                    TermsAbdConditionsLblen
                    // Simulate loading delay
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        showLoader = false
                        isNumberRegistrationPresented = true
                    }
                }
            }, label: {
                Image("nextBarButton")
                    .resizable()
                    .renderingMode(.template)
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
            .padding(.bottom, 0)
            .disabled(!isInputValid) // Disable button based on validation state
            .fullScreenCover(isPresented: $isNumberRegistrationPresented) {
                CreatePasswordUI() // View to present when button is clicked
            }
        }
    }
    private func hideKeyboard() {
           UIApplication.shared.windows.first?.endEditing(true)
       }
}

struct LoderView: View {
    @Binding var loadingView: Bool
    var body: some View {
        if loadingView {
            VStack{
                HStack {
                    Text("Loading...")
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .font(.system(size: 17))
                }
                .padding(.leading,3)
            }
            .frame(maxWidth: .infinity,maxHeight: 70)
            .background(Color.white)
            .cornerRadius(5)
            .padding(30)
            .shadow(radius: 5)
        }
    }
}

struct NumberRegistration_Previews: PreviewProvider {
    static var previews: some View {
        NumberRegistration()
    }
}
