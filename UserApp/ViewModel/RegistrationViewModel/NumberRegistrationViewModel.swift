//
//  NumberRegistrationViewModel.swift
//  UserApp
//
//  Created by jizan k on 21/06/24.
//

import SwiftUI
import Combine

class NumberRegistrationViewModel: ObservableObject {
    @Published var mobileText: String = ""
    @Published var isInputValid: Bool = true
    @Published var showLoader: Bool = false
    @Published var isNumberRegistrationPresented = false

    private var cancellables = Set<AnyCancellable>()

    init() {
        // Example of reactive validation
        $mobileText
            .map { !$0.isEmpty }
            .assign(to: \.isInputValid, on: self)
            .store(in: &cancellables)
    }

    func registerNumber() {
        if mobileText.isEmpty {
            isInputValid = false
        } else {
            isInputValid = true
            showLoader = true
            // Simulate loading delay
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                self.showLoader = false
                self.isNumberRegistrationPresented = true
            }
        }
    }
}
