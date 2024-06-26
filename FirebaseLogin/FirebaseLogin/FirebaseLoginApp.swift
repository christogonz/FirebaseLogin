//
//  FirebaseLoginApp.swift
//  FirebaseLogin
//
//  Created by Christopher Gonzalez on 2024-06-26.
//

import SwiftUI
import Firebase

@main
struct FirebaseLoginApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
