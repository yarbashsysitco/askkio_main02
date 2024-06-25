//
//  CurrencySelectionUiViewModel.swift
//  UserApp
//
//  Created by jizan k on 21/06/24.
//

import Foundation
import Combine
import SwiftUI

class CurrencySelectionUiViewModel: ObservableObject {
    @Published var titleText: String = "Select Currency"
    @Published var bottomText: String = "Which currency do you prefer?"
    
    func dismissView(presentationMode: Binding<PresentationMode>) {
        presentationMode.wrappedValue.dismiss()
    }
}
