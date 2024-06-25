//
//  ReferralCodeViewModel.swift
//  UserApp
//
//  Created by jizan k on 21/06/24.
//

import Foundation
import SwiftUI
import Combine

class ReferralCodeViewModel: ObservableObject {
    @Published var referralText: String = ""
    
    func submitReferralCode() {
       
        print("Referral Code submitted: \(referralText)")
    }
}
