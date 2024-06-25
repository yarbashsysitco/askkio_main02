import SwiftUI

struct BookingHomeMainUI: View {
    @State private var selectedTab: String = "Bookings" // Current active tab
    @State private var showSheet: Bool = false // State to control sheet presentation
    @State private var isPresenting: Bool = false
    
    var body: some View {
        ZStack{
            Color.colorEDEDED
                .ignoresSafeArea(.all)
            VStack {
                TopVie2(selectedTab: $selectedTab)
                HStack {
                    Spacer()
                    Text("Past")
                        .font(.headline)
                    Button(action: {
                        isPresenting.toggle()
                    }) {
                        // Button content
                        HStack {
                            Image(systemName: "chevron.down")
                                .font(.title3)
                                .foregroundColor(.black)
                                .padding(10) // Larger padding for image
                        }
                        
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                .padding(.horizontal)
                Spacer()
                if selectedTab == "Bookings" {
                    VStack {
                        Spacer()
                        Text("No bookings available.")
                            .font(.custom("Roboto-Regular", size: 18))
                            .fontWeight(.regular)
                        Spacer()
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                } else if selectedTab == "My Orders" {
                    VStack {
                        Spacer()
                        Text("No Orders found")
                            .font(.custom("Roboto-Regular", size: 18))
                            .fontWeight(.regular)
                        Spacer()
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                } else if selectedTab == "Bide" {
                    VStack {
                        Spacer()
                        Text("No Bide found")
                            .font(.custom("Roboto-Regular", size: 18))
                            .fontWeight(.regular)
                        Spacer()
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                Spacer()
                
            }
            .edgesIgnoringSafeArea(.top)
            
            // Bottom sheet for adding new credential
            BottomSheetViews(isShown: $isPresenting, cornerRadius: 12) {
                SelectTypeView(isShown: $isPresenting)
            }
        }
        
    }
    
    
}

struct TopVie2: View {
    @Binding var selectedTab: String
    
    var body: some View {
        VStack {
            GeometryReader { geometry in
                VStack {
                    Rectangle()
                        .foregroundColor(Color.accentColor)
                        .frame(height: 140)
                        .overlay(
                            HStack {
                                Spacer().frame(width: geometry.size.width * 0.1)
                                Text("My Bookings")
                                    .font(.custom("Roboto-Regular", size: 20))
                                    .foregroundColor(.white)
                                    .padding(.top, 20)
                                    .frame(maxWidth: .infinity, alignment: .center)
                                Spacer()
                                Button(action: {
                                }, label: {
                                    Image(systemName: "line.3.horizontal")
                                        .resizable()
                                        .renderingMode(.template)
                                        .foregroundColor(.white)
                                        .frame(width: 30, height: 30)
                                        .padding(.top, 20)
                                        .padding(.trailing, 20)
                                })
                            }
                        )
                    
                    ZStack {
                        Rectangle()
                            .frame(height: 50)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                            .shadow(radius: 5)
                            .overlay(
                                HStack {
                                    Spacer().frame(width: 18)
                                    Button(action: {
                                        selectedTab = "Bookings" // Update selected tab state
                                    }) {
                                        Rectangle()
                                            .cornerRadius(20)
                                            .frame(width: geometry.size.width * 0.3, height: 40)
                                            .foregroundColor(selectedTab == "Bookings" ? .accentColor : .white)
                                            .overlay(
                                                Text("Bookings")
                                                    .foregroundColor(selectedTab == "Bookings" ? .white : .black)
                                            )
                                    }
                                    Spacer().frame(width: 2)
                                    
                                    Button(action: {
                                        selectedTab = "My Orders" // Update selected tab state
                                    }) {
                                        Rectangle()
                                            .cornerRadius(20)
                                            .frame(width: geometry.size.width * 0.3, height: 40)
                                            .foregroundColor(selectedTab == "My Orders" ? .accentColor : .white)
                                            .overlay(
                                                Text("My Orders")
                                                    .foregroundColor(selectedTab == "My Orders" ? .white : .black)
                                            )
                                    }
                                    Spacer().frame(width: 2)
                                    
                                    Button(action: {
                                        selectedTab = "Bide" // Update selected tab state
                                    }) {
                                        Rectangle()
                                            .cornerRadius(20)
                                            .frame(width: geometry.size.width * 0.3, height: 40)
                                            .foregroundColor(selectedTab == "Bide" ? .accentColor : .white)
                                            .overlay(
                                                Text("Bide")
                                                    .foregroundColor(selectedTab == "Bide" ? .white : .black)
                                            )
                                    }
                                    Spacer().frame(width: 18)
                                }
                            )
                            .padding(.top, -35)
                            .padding(.horizontal, 10)
                    }
                }
            }
            .frame(height: 200)
        }
    }
}

#Preview {
    BookingHomeMainUI()
}
