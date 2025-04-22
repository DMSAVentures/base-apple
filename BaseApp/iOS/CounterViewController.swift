//
//  CounterViewController.swift
//  BaseApp
//
//  Created by RC on 2025-04-22.
//
#if canImport(UIKit)
import UIKit
import Combine

class CounterViewController: UIViewController {
    private let viewModel = CounterViewModel()
    private var cancellables = Set<AnyCancellable>()

    private let countLabel = UILabel()
    private let incrementButton = UIButton(type: .system)
    private let decrementButton = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        bindViewModel()
    }

    private func setupUI() {
        view.backgroundColor = .systemBackground

        countLabel.textAlignment = .center
        countLabel.font = .systemFont(ofSize: 48)
        countLabel.translatesAutoresizingMaskIntoConstraints = false

        incrementButton.setTitle("+", for: .normal)
        decrementButton.setTitle("-", for: .normal)
        incrementButton.translatesAutoresizingMaskIntoConstraints = false
        decrementButton.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(countLabel)
        view.addSubview(incrementButton)
        view.addSubview(decrementButton)

        NSLayoutConstraint.activate([
            countLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            countLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),

            incrementButton.topAnchor.constraint(equalTo: countLabel.bottomAnchor, constant: 20),
            incrementButton.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: 10),

            decrementButton.topAnchor.constraint(equalTo: countLabel.bottomAnchor, constant: 20),
            decrementButton.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -10)
        ])

        incrementButton.addTarget(self, action: #selector(incrementTapped), for: .touchUpInside)
        decrementButton.addTarget(self, action: #selector(decrementTapped), for: .touchUpInside)
    }

    private func bindViewModel() {
        viewModel.$count
            .receive(on: RunLoop.main)
            .sink { [weak self] count in
                self?.countLabel.text = "\(count)"
            }
            .store(in: &cancellables)
    }

    @objc private func incrementTapped() {
        viewModel.increment()
    }

    @objc private func decrementTapped() {
        viewModel.decrement()
    }
}
#endif
