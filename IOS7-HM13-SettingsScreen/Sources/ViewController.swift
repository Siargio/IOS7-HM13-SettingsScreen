//
//  ViewController.swift
//  IOS7-HM13-SettingsScreen
//
//  Created by Sergio on 25.08.22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

//     var setups: [[Setups]]?
    var data = SetupSections.setupSections

    // MARK: - Outlets

    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(DefaultCell.self, forCellReuseIdentifier: "DefaultCell")
        tableView.register(LabelCell.self, forCellReuseIdentifier: "LabelCell")
        tableView.register(SwitchCell.self, forCellReuseIdentifier: "SwitchCell")
        tableView.dataSource = self
        tableView.delegate = self
        return tableView
    } ()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
//        setups = Setups.setups
        title = "Настройки"
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setup

    private func setupHierarchy() {
        view.addSubview(tableView)
    }

    private func setupLayout() {
        tableView.snp.makeConstraints {
            $0.top.right.bottom.left.equalTo(view)
        }
    }
}

