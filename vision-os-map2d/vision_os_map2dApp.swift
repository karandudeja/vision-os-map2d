import SwiftUI
import MapKit

@main
struct vision_os_map2dApp: App {
    var body: some Scene {
        WindowGroup {
            MapView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
