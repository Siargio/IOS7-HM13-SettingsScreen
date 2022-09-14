//
//  View.swift
//  IOS7-HM13-SettingsScreen
//
//  Created by Sergio on 10.09.22.
//

import UIKit
import SnapKit

final class SettingsTableView: UIView {

    // MARK: - UIElements

     lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.separatorStyle = .none
        tableView.register(BaseCell.self, forCellReuseIdentifier: "BaseCell")
        tableView.register(LabelCell.self, forCellReuseIdentifier: "LabelCell")
        tableView.register(SwitchCell.self, forCellReuseIdentifier: "SwitchCell")
        tableView.register(SearchCell.self, forCellReuseIdentifier: "SearchCell")
        return tableView
    }()

    // MARK: - Initial

    init() {
        super.init(frame: .zero)
        commonInit()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }

    private func commonInit() {
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setup

    private func setupHierarchy() {
        addSubview(tableView)
    }

    private func setupLayout() {
        tableView.snp.makeConstraints {
            $0.top.right.bottom.left.equalToSuperview()
        }
    }
}
