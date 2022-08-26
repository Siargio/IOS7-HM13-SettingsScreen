//
//  LabelCell.swift
//  IOS7-HM13-SettingsScreen
//
//  Created by Sergio on 26.08.22.
//

import UIKit
import SnapKit

class LabelCell: BaseCell {
    
//    private lazy var image: UIImageView = {
//        let image = UIImageView()
//        image.contentMode = .scaleToFill
//        return image
//    } ()
//
    private lazy var labelRight: UILabel = {
        let labelRight = UILabel()
        labelRight.textColor = .lightGray
        labelRight.text = "Не подключено"
        return labelRight
    } ()


//    private lazy var iconContainer: UIView = {
//        let view = UIView()
//        view.clipsToBounds = true
//        view.layer.cornerRadius = 8
//        view.layer.masksToBounds = true
//        return view
//    } ()
//
//    private lazy var iconImageView: UIImageView = {
//        let imageView = UIImageView()
//        imageView.tintColor = .white
//        imageView.contentMode = .scaleAspectFit
//        return imageView
//    } ()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
//        self.addSubview(image)
        self.addSubview(labelRight)
//        self.addSubview(iconContainer)
//        self.addSubview(iconImageView)

//        image.snp.makeConstraints {
//            $0.centerY.centerX.equalTo(contentView)
//            $0.leading.equalTo(contentView)
//            $0.width.equalTo(30)
//        }
//
        labelRight.snp.makeConstraints {
            $0.centerY.equalTo(contentView)
            $0.trailing.equalTo(-35)
        }
//
////        iconContainer.snp.makeConstraints {
////            $0.centerY.centerX.equalTo(10)
////            $0.leading.equalTo(40)
////        }
////
////        iconImageView.snp.makeConstraints {
////            $0.centerY.centerX.equalTo(0)
////            $0.trailing.equalTo(20)
////        }


////        image.translatesAutoresizingMaskIntoConstraints = false
////        label.translatesAutoresizingMaskIntoConstraints = false
//        iconContainer.translatesAutoresizingMaskIntoConstraints = false
//        iconImageView.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint.activate([
//
////            image.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
////            image.centerYAnchor.constraint(equalTo: self.centerYAnchor),
////            image.widthAnchor.constraint(equalToConstant: 21),
////            image.heightAnchor.constraint(equalToConstant: 22),
//
////            label.leadingAnchor.constraint(equalTo: image.leadingAnchor, constant: 40),
////            label.centerYAnchor.constraint(equalTo: image.centerYAnchor),
////            label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -80),
////            label.heightAnchor.constraint(equalToConstant: 50),
//
////            iconContainer.leadingAnchor.constraint(equalTo: image.leadingAnchor, constant: 40),
////            iconContainer.centerYAnchor.constraint(equalTo: image.centerYAnchor),
//            iconContainer.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -80),
//            iconContainer.heightAnchor.constraint(equalToConstant: 50),
//
//            iconImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
//            iconImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
//            iconImageView.widthAnchor.constraint(equalToConstant: 21),
//            iconImageView.heightAnchor.constraint(equalToConstant: 22)
//
//
//        ])
    }
    
    func configureCell(text: String, color: UIColor, imageImage: UIImage) {
        //label.text = text
        configureBaseCell(text: text, color: color, imageImage: imageImage)
    }
}
