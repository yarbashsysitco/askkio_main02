import SwiftUI

struct SplashScreen: View {
    var body: some View {
        ZStack {
            Color.customLightBlue
                .edgesIgnoringSafeArea(.all)
            
            Image("splash")
                .resizable()
                .frame(width: 250, height: 250)
        }
    }
}

#Preview {
    SplashScreen()
}

extension Color {
    static let customLightBlue = Color(red: 0.27, green: 0.63, blue: 0.79 ,opacity: 1.0)
 


}
