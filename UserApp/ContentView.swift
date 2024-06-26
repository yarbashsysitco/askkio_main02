//
//  ContentView.swift
//  UserApp
//
//  Created by admin on 22/05/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showSplsh = true

    var body: some View {
        ZStack {
            if showSplsh {
               SplashScreenUI()
                    .transition(.opacity)
            } else {
                TransactionView()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                withAnimation(.easeOut(duration: 0.6)) {
                    self.showSplsh = false
                }
            }
        }
    }
}



#Preview {
    ContentView()
}
