//
//  ProfileHomePage.swift
//  UserApp
//
//  Created by jizan k on 11/06/24.
//

import SwiftUI

struct OnBoardingUI: View {
    @StateObject private var viewModel = OnboardingViewModel()
    
    var body: some View {
        ZStack {
            HStack(spacing: 0) {
                Rectangle()
                    .foregroundColor(.white)
                Rectangle()
                    .foregroundColor(Color(red: 0.835, green: 0.937, blue: 0.947))
            }
            .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 0) {
                ZStack {
                    Rectangle()
                        .foregroundColor(Color(red: 0.835, green: 0.937, blue: 0.947))
                        .clipShape(RoundedCorner(radius: 20, corners: [.bottomLeft]))
                    
                    ImageView(viewModel: viewModel)
                        .padding(.top, 50)
                }
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .clipShape(RoundedCorner(radius: 20, corners: [.topRight]))
                    
                    ViewText(viewModel: viewModel)
                }
            }
            .edgesIgnoringSafeArea(.all)
            
            LanguageSelectionButtons()
            
            BackButtonView(viewModel: viewModel)
        }
    }
}

//MARK: -ImageView
struct ImageView: View {
    @ObservedObject var viewModel: OnboardingViewModel
    
    var body: some View {
        TabView(selection: $viewModel.currentStep) {
            ForEach(0..<viewModel.onBoardingSteps.count) { index in
                VStack {
                    Image(viewModel.onBoardingSteps[index].image)
                        .resizable()
                        .frame(width: 400, height: 300)
                }
                .tag(index)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

//MARK: -ViewText
struct ViewText: View {
    @ObservedObject var viewModel: OnboardingViewModel
    
    var body: some View {
        TabView(selection: $viewModel.currentStep) {
            ForEach(0..<viewModel.onBoardingSteps.count) { index in
                VStack(alignment: .leading) {
                    Text(viewModel.onBoardingSteps[index].title)
                        .foregroundColor(Color(red: 0.287, green: 0.665, blue: 0.844))
                        .font(.system(size: 22, weight: .bold))
                        .padding(.horizontal, 26)
                    
                    Text(viewModel.onBoardingSteps[index].description)
                        .font(.system(size: 16, weight: .regular))
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 20)
                        .padding(8)
                        .foregroundColor(.black)
                    
                    Spacer()
                        .frame(height: 150)
                }
                .background(Color.white)
                .tag(index)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

//MARK: -LanguageSelectionButtons
struct LanguageSelectionButtons: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Spacer()
                
                LanguageButton(language: "EN", color: .pink)
                LanguageButton(language: "EUR", color: .purple)
            }
            Spacer()
        }
        .padding(.top, 20)
        .padding(.trailing, 20)
    }
}

//MARK: -LanguageButton
struct LanguageButton: View {
    var language: String
    var color: Color
    @State private var showSheet = false

    var body: some View {
        Button(action: {
            withAnimation {
                showSheet.toggle()
            }
        }) {
            ZStack {
                Circle()
                    .fill(color)
                    .frame(width: 50, height: 50)
                
                Text(language)
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .bold))
            }
        }
        .sheet(isPresented: $showSheet) {
            LanguageSelectionUI()
                .frame(width: min(UIScreen.main.bounds.width, 700))
        }
    }
}

//MARK: -BackButtonView
struct BackButtonView: View {
    @ObservedObject var viewModel: OnboardingViewModel
    @State private var isNumberRegistrationPresented = false
    var body: some View {
        VStack {
            Spacer()
            HStack {
                currentStepIndicator
                    .padding(.leading, 20)
                    .padding(.bottom, 20)
                Spacer()
                Button(action: {
                    isNumberRegistrationPresented = true
                }, label: {
                    Circle()
                        .fill(Color(red: 0.285, green: 0.662, blue: 0.84))
                        .shadow(radius: 5)
                        .frame(width: 70, height: 71)
                        .overlay(
                            Image("nextBarButton")
                                .renderingMode(.template)
                                .resizable()
                                .foregroundColor(.white)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                        )
                })
                .padding(.trailing, 30)
                .padding(.bottom, 20)
            }
        }
        .padding(.bottom, 40)
        .edgesIgnoringSafeArea(.bottom)
        .fullScreenCover(isPresented: $isNumberRegistrationPresented) {
            NumberRegistration()
        }
    }
    
    var currentStepIndicator: some View {
        HStack {
            ForEach(0..<viewModel.onBoardingSteps.count, id: \.self) { it in
                if it == viewModel.currentStep {
                    Rectangle()
                        .frame(width: 28, height: 10)
                        .cornerRadius(10)
                        .foregroundColor(Color(red: 0.286, green: 0.662, blue: 0.84))
                } else {
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundColor(Color(red: 0.753, green: 0.753, blue: 0.753))
                }
            }
        }
        .padding(.leading, 20)
    }
}

#Preview {
    OnBoardingUI()
}
