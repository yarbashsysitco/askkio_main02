//
//  EditProfileViewModel.swift
//  UserApp
//
//  Created by jizan k on 25/06/24.
//

import Foundation
import SwiftUI

class EditProfileViewModel: ObservableObject {
//    @Published var screenDismiss: Bool = false
    @Published var showSheet: Bool = false
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var emailAddress: String = ""
    @Published var mobile: String = ""
    @Published var language: String = "English"
    @Published var currency: String = "DOB"
    
    func updateProfile() {
        // Add logic to update profile
    }
    
    func selectCountry() {
        showSheet.toggle()
    }
}
