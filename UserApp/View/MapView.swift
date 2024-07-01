import SwiftUI
import GoogleMaps
import MapKit

struct MapView: View {
    var body: some View {
        
        VStack {
            ZStack {
                // Map view taking up the space at the top
                Map()
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    BottamViews()
                        .edgesIgnoringSafeArea(.bottom)
                }
            }
        }
    }
}

#Preview {
    MapView()
}

struct BottamViews: View{
    let buttonData = [
        ("Home", Color.customBlue,"ic_home_bottom"),
        ("Office", Color.red,"ic_officebotton"),
        ("Recent", Color.orange,"ic_recent_bottom")
    ]
    
    let imageData = [
          "ic_home_bottom", "ic_office_bottom", "ic_recent_bottom"
      ]
    var body: some View{
            VStack{
                Rectangle()
                    .foregroundColor(Color.white)
                    .clipShape(RoundedCorner(radius: 20, corners: [.topLeft]))
                    .clipShape(RoundedCorner(radius: 20, corners: [.topRight]))
                    .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5) // Add shadow
                    .edgesIgnoringSafeArea(.bottom)
                
                    .frame(height: 225)
                    .overlay(
                        VStack{
                            Spacer()
                            HStack {
                                Spacer()
                                ForEach(buttonData, id: \.0) { data in
                                    Rectangle()
                                    //                            .foregroundColor(data.1)
                                        .frame(width: 100, height: 130)
                                        .cornerRadius(10)
                                        .shadow(radius: 5)
                                        .foregroundColor(Color.white)
                                    
                                        .overlay(
                                            VStack(spacing: -10){
                                                Image(data.2)
                                                    .resizable()
                                                    .frame(width: 50, height: 50)
                                                Button(action: {
                                                    print("\(data.0) button tapped")
                                                }) {
                                                    
                                                    Text(data.0)
                                                        .padding()
                                                        .foregroundColor(.black)
                                                        .fontWeight(.bold)
                                                }
                                            }
                                        )
                                    Spacer()
                                }
                            }
                        }
                    )
            }
            
            
       
    }
}

