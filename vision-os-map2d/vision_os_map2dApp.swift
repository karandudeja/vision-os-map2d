import SwiftUI
import MapKit

@main
struct vision_os_map2dApp: App {
    var body: some Scene {
        WindowGroup {
            MapView(coordinate: CLLocationCoordinate2D(latitude: 59.16497, longitude: 17.64635))
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
