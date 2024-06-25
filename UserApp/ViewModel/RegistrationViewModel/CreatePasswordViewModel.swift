//
//  CreatePasswordViewModel.swift
//  UserApp
//
//  Created by jizan k on 21/06/24.
//

import Foundation
    
class CreatePasswordViewModel: ObservableObject {
    @Published var passwordText: String = ""
    @Published var isPasswordVisible: Bool = false
    @Published var isTextFieldEmpty: Bool = true
    
    func togglePasswordVisibility() {
        isPasswordVisible.toggle()
    }
    
    func updateEmptyState() {
        isTextFieldEmpty = passwordText.isEmpty
    }
}
