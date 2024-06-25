//
//  EnterNameViewModel.swift
//  UserApp
//
//  Created by jizan k on 21/06/24.
//

import Foundation
class EnterNameViewModel: ObservableObject{
    @Published var frstname: String = ""
    @Published var lastname: String = ""
    @Published var isPasswordVisible: Bool = false
    
    func togglePasswordVisibility() {
        isPasswordVisible.toggle()
    }
    
}
