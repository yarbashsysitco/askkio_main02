//
//  chooseProfileViewModel.swift
//  UserApp
//
//  Created by jizan k on 21/06/24.
//

import Foundation
class chooseProfileViewModel: ObservableObject {
    @Published var selection: String? = nil
    
    func selectProfile(_ profile: String) {
        selection = profile
    }
    
    func dismiss() {
    }
}
