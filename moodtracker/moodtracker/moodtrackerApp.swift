//
//  moodtrackerApp.swift
//  moodtracker
//
//  Created by Ishrat Lallmamode on 4/1/22.
//

import SwiftUI

@main
struct moodtrackerApp: App {
    @StateObject var store = moodStore()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(store)
        }
    }
}
