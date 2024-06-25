import SwiftUI

struct SelectTypeView: View {
    @Binding var isShown: Bool
    @State private var accountName: String = ""
    @State private var userName: String = ""
    @State private var password: String = ""
    @State private var showingAlert = false // To control showing validation alert

    var body: some View {
        ZStack(alignment: .top) {
            VStack(spacing: 24) {
                EmptyView() // Placeholder for any top element or spacer
                TextField("Account Name", text: $accountName)
                    .textFieldStyle(.roundedBorder)
                TextField("Username/Email", text: $userName)
                    .textFieldStyle(.roundedBorder)
                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
                Button(action: {
                    if isValidInput() {
                        // Handle adding account logic here
                        // For demonstration, you can print the values
                        print("Adding Account:")
                        print("Account Name: \(accountName)")
                        print("Username/Email: \(userName)")
                        // NOTE: Avoid printing passwords or handle securely
                        // You might want to save them securely instead
                        print("Password: \(password)")
                    } else {
                        showingAlert = true
                    }
                }) {
                    HStack {
                        Spacer()
                        Text("Add New Account")
                            .font(Font.system(size: 16, weight: .bold, design: .rounded))
                            .foregroundColor(Color.white)
                            .padding()
                        Spacer()
                    }
                    .frame(height: 44)
                    .background(Color.blue) // Use your preferred button color
                    .cornerRadius(12)
                    .padding(.horizontal, 40) // Adjust padding as needed
                }
            }
            .padding(.horizontal, 16)
            
            // Alert for validation
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Incomplete Information"),
                      message: Text("Please fill in all fields to add the account."),
                      dismissButton: .default(Text("OK")))
            }
        }
        .background(Color.white) // Optional: Set background color for entire view
    }

    private func isValidInput() -> Bool {
        return !accountName.isEmpty && !userName.isEmpty && !password.isEmpty
    }
}

struct SelectTypeView_Previews: PreviewProvider {
    static var previews: some View {
        SelectTypeView(isShown: .constant(false))
    }
}
