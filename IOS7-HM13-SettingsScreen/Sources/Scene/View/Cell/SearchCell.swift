//
//  SearchCell.swift
//  IOS7-HM13-SettingsScreen
//
//  Created by Sergio on 29.08.22.
//

import UIKit
import SnapKit

final class SearchCell: UITableViewCell {

    // MARK: - UIElements

    private lazy var searchTextField: UITextField = {
        let searchTextField = UITextField()
        searchTextField.leftView = UIImageView(image: UIImage(systemName: "magnifyingglass"))
        searchTextField.tintColor = .systemGray
        searchTextField.leftViewMode = .always
        searchTextField.attributedPlaceholder = NSAttributedString(string: "  Поиск", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        searchTextField.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        return searchTextField
    }()

    // MARK: - Lifecycle

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setup

    private func setupHierarchy() {
        self.addSubview(searchTextField)
    }

    private func setupLayout() {
        searchTextField.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.leading.equalToSuperview().offset(10)
            $0.trailing.equalToSuperview().inset(10)
        }
    }
}
