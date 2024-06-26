import SwiftUI

struct SelectTypeView: View {
    @Binding var isShown: Bool
    @State private var selectedButton: String? = nil
    
    let buttons = ["in process", "upcoming", "past", "expired", "All"] // List of buttons
    
    var body: some View {
        ZStack(alignment: .top) {
            VStack(spacing: 5) {
                
                // Header with title and close button
                HStack {
                    Text("Select Type")
                        .fontWeight(.bold)
                        .padding(.horizontal, 10)

                    Spacer()
                    Button(action: {
                        isShown = false // Action to close the view
                    }) {
                        Image(systemName: "x.circle")
                            .font(.title3)
                            .foregroundColor(.black)
                            .padding(5)
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding(.horizontal, 10)
                }
                Divider() 
                    .background(Color.gray)
                // Horizontal line
                
                // Buttons ("in process", "upcoming", "past", "expired", "All")
                ForEach(buttons, id: \.self) { button in
                    Button(action: {
                        selectedButton = button
                    }) {
                        HStack {
                            Text(button)
                                .fontWeight(.regular)
//                                .padding(.horizontal, 5)
                                .foregroundColor(selectedButton == button ? .blue : .black) // Change text color to blue if selected
                                .padding(.horizontal, 10)

                            Spacer()
                            Image(systemName: "checkmark.circle")
                                .font(.title3)
                                .foregroundColor(selectedButton == button ? .blue : .black) // Change icon color to blue if selected
                                .padding(10)
                        }
                        .background(selectedButton == button ? Color.gray.opacity(0.2) : Color.clear)
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding(.horizontal, 5)
                }
                
                Spacer()
            }
//            .padding(10) // Padding to the entire VStack
//            .cornerRadius(20)
            
        }
        .background(Color.white) // Optional: Set background color for entire view
    }
}

struct SelectTypeView_Previews: PreviewProvider {
    static var previews: some View {
        SelectTypeView(isShown: .constant(false))
    }
}
