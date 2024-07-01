import SwiftUI

@main
struct UserAppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            MapView()
        }
    }
}
