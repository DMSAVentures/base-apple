//
//  BaseAppWatchApp.swift
//  BaseAppWatch Watch App
//
//  Created by RC on 2025-04-22.
//

import SwiftUI

@main
struct BaseAppWatch_Watch_AppApp: App {
    let viewModel = CounterViewModel()
    var body: some Scene {
        WindowGroup {
            CounterWatchView(viewModel: viewModel)
        }
    }
}
