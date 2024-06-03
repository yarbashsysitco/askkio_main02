//
//  LanguageSelectionUI.swift
//  UserApp
//
//  Created by jizan k on 30/05/24.
//

import SwiftUI


//struct Corners: Shape {
//    var radius: CGFloat
//    var corners: UIRectCorner
//    func path(in rect: CGRect) -> Path {
//        let path = UIBezierPath(
//            roundedRect: rect,
//            byRoundingCorners: corners,
//            cornerRadii: CGSize(width: radius, height: radius)
//        )
//        return Path(path.cgPath)
//    }
//}

struct LanguageSelectionUI: View {
    
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                titleText
                Spacer()
                    .frame(height: 7)
                bottomText
                Spacer()
                    .frame(height: 10)
            }
            .padding(.leading, 30)
            .frame(width: UIScreen.main.bounds.width, height: 80,alignment: .leading)
            
            List{
                
                
            }
        }
    }
    
}

var titleText: some View {
    Text("select language".capitalized)
        .font(.system(size: 20,weight: .semibold))
}

var bottomText: some View {
    Text("Which language do you prefer?")
        .font(.system(size: 16,weight: .regular))
}


#Preview {
    LanguageSelectionUI()
}
