//
//  ProfileHomePageModel.swift
//  UserApp
//
//  Created by jizan k on 25/06/24.
//

import Foundation
import SwiftUI

struct ProfileHomePageModel: Identifiable {
    var id = UUID()
    var imageName: String
    var category: String
}

enum SettingsSection: String {
    case general = "General Settings"
    case account = "Account Setting"
    case payment = "Payment"
    case favouriteLocations = "Favourite Locations"
    case support = "Support"
    case others = "Others"
}
