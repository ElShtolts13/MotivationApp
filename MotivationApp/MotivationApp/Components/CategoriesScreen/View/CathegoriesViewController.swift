//
//  CathegoriesViewController.swift
//  MotivationApp
//
//  Created by Надежда Капацина on 24.02.2025.
//

import UIKit

class CathegoriesViewController: UIViewController {
    
    private let viewModel = CategoriesViewModel()
    
    // MARK: - UI elements
    
    private let titleLabel = UILabel(
    title: """
     What makes you 
     feel that way?
     """, weight: .bold, size: 28)
    private let secondTitleLabel = UILabel(title: "you can select more than one", weight: .medium, size: 17)
    private let bottomTitleLabel = UILabel(title: "you can change it later", weight: .medium, size: 17)
    private let cathegoryTableView = UITableView()
    private let doneButton = UIButton()
    
    
    
    // MARK: - life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubViews()
        setupConstraints()
        setupUI()
    }
    
    // MARK: - setupUI
    
    private func addSubViews() {
        view.addSubview(titleLabel)
        view.addSubview(secondTitleLabel)
        view.addSubview(cathegoryTableView)
        view.addSubview(bottomTitleLabel)
        view.addSubview(doneButton)
    }
    
    private func setupUI() {
        
        title = "Categories"
        view.backgroundColor = .white
    }
    
    // MARK: - setupTableView
    
    private func setupTableView() {
        
    }
}

extension CathegoriesViewController {
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            secondTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            secondTitleLabel.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor)
        ])
        
        
    }
}
