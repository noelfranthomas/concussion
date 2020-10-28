//
//  ConcussionApp.swift
//  Concussion
//
//  Created by Noel Thomas on 2020-10-27.
//

import SwiftUI

@main
struct ConcussionApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
