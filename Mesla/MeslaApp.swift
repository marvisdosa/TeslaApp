//
//  MeslaApp.swift
//  Mesla
//
//  Created by Marvis Ighedosa on 30/11/2023.
//

import SwiftUI

@main
struct MeslaApp: App {
    @StateObject var teslaModels = TeslaViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView().preferredColorScheme(.dark)
            }
            .environmentObject(teslaModels)
        }
    }
}
