//
//  CounterViewModel.swift
//  BaseApp
//
//  Created by RC on 2025-04-22.
//

import Foundation
import Combine

class CounterViewModel: ObservableObject {
    @Published private(set) var count: Int = 0

    func increment() {
        count += 1
    }

    func decrement() {
        count -= 1
    }
}
