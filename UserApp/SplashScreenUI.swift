//
//  SplashScreenUI.swift
//  UserApp
//
//  Created by jizan k on 03/06/24.
//

import SwiftUI

struct SplashScreenUI: View {
    var body: some View {
        ZStack{
            Color.customCyanBlue
            Image("splash")
                .resizable()
                .frame(width: 250,height: 250)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    SplashScreenUI()
}

extension Color {
    static let customBlue = Color(red: 0.302, green: 0.571, blue: 0.619)
    static let customSkyBlue = Color(red: 0.298, green: 0.737, blue: 0.949)
    static let customCyanBlue = Color(red: 0.267, green: 0.635, blue: 0.792)
    static let customLightBlue = Color(red: 0.369, green: 0.624, blue: 0.776)
}
