//
//  SwitchCell.swift
//  IOS7-HM13-SettingsScreen
//
//  Created by Sergio on 26.08.22.
//

import UIKit

class SwitchCell: BaseCell {

    private lazy var newImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        return image
    } ()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupView() {
        self.addSubview(newImage)


        newImage.translatesAutoresizingMaskIntoConstraints = false


        NSLayoutConstraint.activate([
            newImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            newImage.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            newImage.widthAnchor.constraint(equalToConstant: 21),
            newImage.heightAnchor.constraint(equalToConstant: 22),

        ])
    }

    func configureCell(text: String) {
        newImage.image = UIImage(systemName: "play.fill")
        configureBaseCell(text: text)
    }
}
