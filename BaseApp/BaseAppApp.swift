//
//  BaseAppApp.swift
//  BaseApp
//
//  Created by RC on 2025-04-22.
//

import SwiftUI

@main
struct BaseAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
