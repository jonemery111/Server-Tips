//
//  Server_TipsApp.swift
//  Server Tips
//
//  Created by Jon Emery on 7/20/23.
//

import SwiftUI

@main
struct Server_TipsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
