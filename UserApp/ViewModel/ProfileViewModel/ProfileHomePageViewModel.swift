//
//  ProfileHomePageViewModel.swift
//  UserApp
//
//  Created by jizan k on 25/06/24.
//

import Foundation
import SwiftUI

class ProfileHomePageViewModel: ObservableObject {
    @Published var isSwitchOn = false
    @Published var isScrolling = false
    
    
    let generalList = [
        ProfileHomePageModel(imageName: "ic_pf_bookings", category: "My Bookings"),
        ProfileHomePageModel(imageName: "ic_pf_busi_pro", category: "Business Profile"),
        ProfileHomePageModel(imageName: "ic_my_cart", category: "My Cart"),
        ProfileHomePageModel(imageName: "ic_pf_notification", category: "Notifications"),
        ProfileHomePageModel(imageName: "ic_pf_favdriver", category: "Favourite Service Providers"),
        ProfileHomePageModel(imageName: "ic_pf_Invite", category: "Invite Friends"),
        ProfileHomePageModel(imageName: "ic_pf_emr_contact", category: "Emergency Contact")
    ]
    
    let accountSettingsList1 = [
        ProfileHomePageModel(imageName: "ic_pf_phonevery", category: "Verify your Mobile"),
        ProfileHomePageModel(imageName: "ic_pf_contactus", category: "Verify your Email")
    ]
    
    let accountSettingsList2 = [
        ProfileHomePageModel(imageName: "ic_pf_personaldetails", category: "Manage Account"),
        ProfileHomePageModel(imageName: "ic_pf_change_password", category: "Change Password"),
        ProfileHomePageModel(imageName: "ic_pf_change_currency", category: "Change Currency"),
        ProfileHomePageModel(imageName: "ic_pf_change_location", category: "Change Language")
    ]
    
    let paymentList = [
        ProfileHomePageModel(imageName: "ic_pf_payment_method", category: "Payment method"),
        ProfileHomePageModel(imageName: "ic_pf_wallet", category: "My Wallet"),
        ProfileHomePageModel(imageName: "ic_pf_wallettopup", category: "Add Money"),
        ProfileHomePageModel(imageName: "ic_pf_wallet_send", category: "Send Money")
    ]
    
    let favouriteLocationsList = [
        ProfileHomePageModel(imageName: "ic_pf_home", category: "Add Home"),
        ProfileHomePageModel(imageName: "ic_pf_work", category: "Add Work")
    ]
    
    let supportList = [
        ProfileHomePageModel(imageName: "ic_pf_aboutus", category: "About Us"),
        ProfileHomePageModel(imageName: "ic_pf_privacy", category: "Privacy Policy"),
        ProfileHomePageModel(imageName: "ic_pf_terms", category: "Terms and Conditions"),
        ProfileHomePageModel(imageName: "ic_pf_faq", category: "FAQ"),
        ProfileHomePageModel(imageName: "ic_pf_contactus", category: "Contact Us")
    ]
}
