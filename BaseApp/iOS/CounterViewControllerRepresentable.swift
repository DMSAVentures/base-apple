//
//  CounterViewControllerRepresentable.swift
//  BaseApp
//
//  Created by RC on 2025-04-22.
//

#if os(iOS)
import SwiftUI
import UIKit

struct CounterViewControllerRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> CounterViewController {
        return CounterViewController()
    }

    func updateUIViewController(_ uiViewController: CounterViewController, context: Context) {
        // no-op
    }
}
#endif
