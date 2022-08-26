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
        image.layer.cornerRadius = 8
        return image
    } ()
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.textColor = .black
        return label
    } ()

    private lazy var imageIm: UIImageView = {
        let imageIm = UIImageView()
        imageIm.tintColor = .white
        return imageIm
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
        self.addSubview(imageIm)


        image.snp.makeConstraints {
            $0.centerY.equalTo(contentView)
            $0.leading.equalTo(20)
            $0.width.height.equalTo(30)
        }

        label.snp.makeConstraints {
            $0.centerY.equalTo(contentView)
            $0.leading.equalTo(image).offset(40)
        }

        imageIm.snp.makeConstraints {
            $0.centerY.centerX.equalTo(image)
        }





//        image.translatesAutoresizingMaskIntoConstraints = false
//        label.translatesAutoresizingMaskIntoConstraints = false
//        imageIm.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint.activate([
//
//            image.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
//            image.centerYAnchor.constraint(equalTo: self.centerYAnchor),
//            image.widthAnchor.constraint(equalToConstant: 30),
//            image.heightAnchor.constraint(equalToConstant: 30),
//
//            label.leadingAnchor.constraint(equalTo: image.leadingAnchor, constant: 40),
//            label.centerYAnchor.constraint(equalTo: image.centerYAnchor),
//            label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
//            //label.heightAnchor.constraint(equalToConstant: 50)
//
//            imageIm.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
//            imageIm.centerYAnchor.constraint(equalTo: self.centerYAnchor),
//            imageIm.centerXAnchor.constraint(equalTo: image.centerXAnchor),
//            imageIm.widthAnchor.constraint(equalToConstant: 21),
//            imageIm.heightAnchor.constraint(equalToConstant: 22),
//        ])
    }
    
    func configureBaseCell(text: String, color: UIColor, imageImage: UIImage) {
        label.text = text
        image.backgroundColor = color
        imageIm.image = imageImage
    }
}
