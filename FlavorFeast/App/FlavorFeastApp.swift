import SwiftUI

@main
struct FlavorFeastApp: App {
    var body: some Scene {
        WindowGroup {
            HomeScreen()
                .environment(\.font, .epilogue())
        }
    }
}
