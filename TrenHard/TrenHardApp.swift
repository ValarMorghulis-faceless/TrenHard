//
//  TrenHardApp.swift
//  TrenHard
//
//  Created by Giorgi Samkharadze on 15.03.23.
//

import SwiftUI

@main
struct TrenHardApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(AppStateManager())
        }
    }
}
