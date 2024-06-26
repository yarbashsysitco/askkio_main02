//
//  TransferMoneyViewModel.swift
//  UserApp
//
//  Created by jizan k on 26/06/24.
//

import Foundation
class TransferMoneyViewModel: ObservableObject {
    @Published var moneyTranferSelection: String? = nil
    @Published var enterEmail: String = ""
    
    func selectTransferOption(_ Option: String) {
        moneyTranferSelection = Option
    }
}
