//
//  EmailAddressViewModel.swift
//  UserApp
//
//  Created by jizan k on 21/06/24.
//

import Foundation
import Combine

class EmailAddressViewModel: ObservableObject {
    @Published var emailText: String = ""
    
    func saveEmailAddress() {
    }
}
