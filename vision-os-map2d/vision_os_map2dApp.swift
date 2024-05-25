//
//  vision_os_map2dApp.swift
//  vision-os-map2d
//
//  Created by DSV on 2024-05-25.
//

import SwiftUI

@main
struct vision_os_map2dApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
