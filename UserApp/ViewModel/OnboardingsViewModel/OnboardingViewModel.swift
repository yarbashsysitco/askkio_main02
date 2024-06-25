//
//  OnboardingViewModel.swift
//  UserApp
//
//  Created by jizan k on 21/06/24.
//

import SwiftUI

class OnboardingViewModel: ObservableObject {
    @Published var currentStep = 0
        
        let onBoardingSteps = [
            OnboardingModel(image: "Screen_1", title: "Enable Smart login. It's quick \n& secure", description: "You can log into the app the same way you unlock your device."),
            OnboardingModel(image: "Screen_2", title: "Book Taxi", description: "Need a pick me up? Book your car quickly, pay in-app easily and arrive safely."),
            OnboardingModel(image: "Screen_3", title: "Package Delivery", description: "Send or receive packages with delivery Genie...A convenient courier at your fingertips!"),
            OnboardingModel(image: "Screen_4", title: "Car Wash", description: "The easiest way to get your car sparkling inside and out. Book a CAR WASH today."),
            OnboardingModel(image: "Screen_5", title: "Beauty & Wellness Services", description: "Get hair, nail, spa, and other beauty treatments on the go with your favorite service provider."),
            OnboardingModel(image: "Screen_6", title: "Home Cleaning", description: "Home cleaning services offer affordable daily or more regular home cleaning packages.")
        ]
}


