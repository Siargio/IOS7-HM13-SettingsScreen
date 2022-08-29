//
//  SearchCell.swift
//  IOS7-HM13-SettingsScreen
//
//  Created by Sergio on 29.08.22.
//

import UIKit
import SnapKit

class SearchCell: UITableViewCell {

    // MARK: - Elements

    private lazy var SearchTextField: UITextField = {
        let SearchTextField = UITextField()
        SearchTextField.leftView = UIImageView(image: UIImage(systemName: "magnifyingglass"))
        SearchTextField.tintColor = .systemGray
        SearchTextField.leftViewMode = .always
        SearchTextField.attributedPlaceholder = NSAttributedString(string: "  Поиск", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        SearchTextField.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        return SearchTextField
    }()

    // MARK: - Lifecycle

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    // MARK: - Setup

    private func setupView() {
        self.addSubview(SearchTextField)

        SearchTextField.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.leading.equalToSuperview().offset(10)
            $0.trailing.equalToSuperview().inset(10)
        }
    }
}
