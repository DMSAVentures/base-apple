//
//  CounterWatchView.swift
//  BaseApp
//
//  Created by RC on 2025-04-22.
//

import SwiftUI

public struct CounterWatchView: View {
    @ObservedObject var viewModel: CounterViewModel
    
    public var body: some View {
        VStack {
            Text("\(viewModel.count)")
            Button("Increment") {
                viewModel.increment()
            }
            Button("Decrement") {
                viewModel.decrement()
            }
        }
    }
}
