//
//  ContactsNanoChallengeApp.swift
//  ContactsNanoChallenge
//
//  Created by Rossella Ambrosio on 14/11/23.
//

import SwiftUI
import SwiftData

@main
struct ContactsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Contact.self )
    }
}
