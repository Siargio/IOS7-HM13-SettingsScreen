//
//  SwitchCell.swift
//  IOS7-HM13-SettingsScreen
//
//  Created by Sergio on 26.08.22.
//

import UIKit

class SwitchCell: BaseCell {

//    private lazy var image: UIImageView = {
//        let image = UIImageView()
//        image.contentMode = .scaleToFill
//        image.backgroundColor = .blue
//        return image
//    } ()
//
//    private lazy var newImage: UIImageView = {
//        let image = UIImageView()
//        image.contentMode = .scaleAspectFill
//        return image
//    } ()

    private lazy var componentSwitch: UISwitch = {
        let componentSwitch = UISwitch()
        componentSwitch.onTintColor = .systemGreen
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
        //self.addSubview(image)

        componentSwitch.translatesAutoresizingMaskIntoConstraints = false
        //image.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            componentSwitch.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -45),
            componentSwitch.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -5),
            componentSwitch.widthAnchor.constraint(equalToConstant: 21),
            componentSwitch.heightAnchor.constraint(equalToConstant: 22),

//            image.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
//            image.centerYAnchor.constraint(equalTo: self.centerYAnchor),
//            image.widthAnchor.constraint(equalToConstant: 21),
//            image.heightAnchor.constraint(equalToConstant: 22),

        ])
    }

    func configureCell(text: String, color: UIColor, imageImage: UIImage) {
        configureBaseCell(text: text, color: color, imageImage: imageImage)

    }
}
