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
    }
    
    func configureBaseCell(text: String, color: UIColor, imageImage: UIImage) {
        label.text = text
        image.backgroundColor = color
        imageIm.image = imageImage
    }
}
