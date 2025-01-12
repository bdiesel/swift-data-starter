//
//  SwiftDataStarterApp.swift
//  SwiftDataStarter
//
//  Created by Brian Diesel on 1/10/25.
//
import SwiftData
import SwiftUI

@main
struct SwiftDataStarterApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Book.self)
    }
}
