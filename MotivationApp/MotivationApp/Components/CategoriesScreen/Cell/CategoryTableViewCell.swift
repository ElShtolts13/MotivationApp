//
//  CategoryTableViewCEll.swift
//  MotivationApp
//
//  Created by Надежда Капацина on 24.02.2025.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
    
    static let identifier = "CategoryTableViewCell"
    
    // MARK: - UI elements
    
    let categoryLabel = UILabel(title: "", weight: .regular, size: 20)
    
    // MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        setupConstraints()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        contentView.addSubview(categoryLabel)
        selectionStyle = .none
        contentView.layer.cornerRadius = 8
        contentView.layer.masksToBounds = true
    }
    private func setupConstraints() {
            NSLayoutConstraint.activate([
                categoryLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
                categoryLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
                categoryLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
                categoryLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12)
            ])
        }
    
    // MARK: - Configuration
    func configure(with title: String, isSelected: Bool) {
        categoryLabel.text = title
        updateSelectionAppearance(isSelected: isSelected)
    }
    
    private func updateSelectionAppearance(isSelected: Bool) {
        UIView.animate(withDuration: 0.3) {
            self.contentView.backgroundColor = isSelected ?
                UIColor.systemGreen.withAlphaComponent(0.2) :
                .clear
        }
    }
}
