//
//  SwitchCell.swift
//  IOS7-HM13-SettingsScreen
//
//  Created by Sergio on 26.08.22.
//

import UIKit

final class SwitchCell: BaseCell {
    
    // MARK: - UIElements

    private lazy var componentSwitch: UISwitch = {
        let componentSwitch = UISwitch()
        componentSwitch.onTintColor = .systemGreen
        componentSwitch.addTarget(self, action: #selector(switchPressed), for: .touchUpInside)
        return componentSwitch
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

    func setupHierarchy() {
        self.addSubview(componentSwitch)
    }

    private func setupLayout() {
        componentSwitch.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            componentSwitch.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            componentSwitch.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -5),
            componentSwitch.widthAnchor.constraint(equalToConstant: 21),
            componentSwitch.heightAnchor.constraint(equalToConstant: 22)
        ])
    }

    // MARK: - Setup

    override func configuration(data: Setups?) {
        super.configuration(data: data!)
    }

    @objc func switchPressed(_ sender: UISwitch) {
        if sender.isOn {
            print("Turn ON")
        } else {
            print("Turn OFF")
        }
    }
}
