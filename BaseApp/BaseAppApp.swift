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
    let viewModel = CounterViewModel()
    var body: some Scene {
        WindowGroup {
            #if os(iOS)
            CounterViewControllerRepresentable()
            #elseif os(watchOS)
            CounterWatchView(viewModel:viewModel)
            #elseif os(macOS)
            CounterMacView(viewModel:  viewModel)
            #endif
        }
    }
}
