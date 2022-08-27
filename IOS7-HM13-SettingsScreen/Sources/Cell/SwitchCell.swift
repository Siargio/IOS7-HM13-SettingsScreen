//
//  SwitchCell.swift
//  IOS7-HM13-SettingsScreen
//
//  Created by Sergio on 26.08.22.
//

import UIKit

class SwitchCell: BaseCell {

    private lazy var componentSwitch: UISwitch = {
        let componentSwitch = UISwitch()
        componentSwitch.onTintColor = .systemGreen
        componentSwitch.addTarget(self, action: #selector(switchPressed), for: .touchUpInside)
        return componentSwitch
    } ()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupView() {
        self.addSubview(componentSwitch)

        componentSwitch.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            componentSwitch.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -45),
            componentSwitch.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -5),
            componentSwitch.widthAnchor.constraint(equalToConstant: 21),
            componentSwitch.heightAnchor.constraint(equalToConstant: 22),

        ])
    }

    func configureCell(text: String, color: UIColor, imageImage: UIImage) {

        configureBaseCell(text: text, color: color, imageImage: imageImage)
    }

    @objc func switchPressed(_ sender: UISwitch) {
        if sender.isOn {
            print("Turn ON")
        } else {
            print("Turn OFF")
        }
    }
}
