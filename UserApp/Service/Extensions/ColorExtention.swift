//
//  ColorExtention.swift
//  UserApp
//
//  Created by jizan k on 06/06/24.
//

import SwiftUI


// Color Extension
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

// RoundedCorner Struct
struct RoundedCorner: Shape {
    var radius: CGFloat
    var corners: UIRectCorner

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}



struct VisualEffectBlur<Content: View>: UIViewRepresentable {
    var blurStyle: UIBlurEffect.Style
    @ViewBuilder var content: () -> Content

    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: blurStyle))
        let hostingController = UIHostingController(rootView: content())
        hostingController.view.backgroundColor = .clear
        view.contentView.addSubview(hostingController.view)
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            hostingController.view.leadingAnchor.constraint(equalTo: view.contentView.leadingAnchor),
            hostingController.view.trailingAnchor.constraint(equalTo: view.contentView.trailingAnchor),
            hostingController.view.topAnchor.constraint(equalTo: view.contentView.topAnchor),
            hostingController.view.bottomAnchor.constraint(equalTo: view.contentView.bottomAnchor),
        ])
        
        return view
    }

    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        if let hostingController = uiView.contentView.subviews.first as? UIHostingController<Content> {
            hostingController.rootView = content()
        }
    }
}
