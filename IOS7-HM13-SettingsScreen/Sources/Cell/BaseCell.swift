//
//  BaseCell.swift
//  IOS7-HM13-SettingsScreen
//
//  Created by Sergio on 26.08.22.
//

import UIKit

class BaseCell: UITableViewCell {

    private lazy var image: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleToFill
        return image
    } ()

    private lazy var label: UILabel = {
        let label = UILabel()
        label.textColor = .green
        return label
    } ()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
          super.init(style: style, reuseIdentifier: reuseIdentifier)
          setupView()
      }

      required init?(coder: NSCoder) {
          super.init(coder: coder)
      }


    private func setupView() {
        self.addSubview(image)
        self.addSubview(label)

        image.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([

            image.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            image.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            image.widthAnchor.constraint(equalToConstant: 21),
            image.heightAnchor.constraint(equalToConstant: 22),

            label.leadingAnchor.constraint(equalTo: image.leadingAnchor, constant: 20),
            label.centerYAnchor.constraint(equalTo: image.centerYAnchor),
            label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -80),
            label.heightAnchor.constraint(equalToConstant: 50)
        ])
    }

    func configureBaseCell(text: String) {
        label.text = text
    }
}