//
//  LabelCell.swift
//  IOS7-HM13-SettingsScreen
//
//  Created by Sergio on 26.08.22.
//

import UIKit
import SnapKit

class LabelCell: BaseCell {
    
    // MARK: - Outlets

    private lazy var label: UILabel = {
        let labelRight = UILabel()
        labelRight.textColor = .lightGray
        return labelRight
    } ()

    private lazy var imageR: UIImageView = {
        let image = UIImage()
        //let image = UIImage(systemName: "1.circle.fill")
        let imageR = UIImageView(image: image)
        imageR.tintColor = .systemRed
        return imageR
    } ()
    
    // MARK: - Lifecycle

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setup
    
    func setupView() {
        self.addSubview(imageR)
        self.addSubview(label)


        label.snp.makeConstraints {
            $0.centerY.equalTo(contentView)
            $0.trailing.equalTo(-35)
        }

        imageR.snp.makeConstraints {
            $0.centerY.equalTo(contentView)
            $0.trailing.equalTo(-40)
            $0.width.height.equalTo(30)
        }
    }
    
    func configureCell(text: String, color: UIColor, imageImage: UIImage, labelRight: String?, imageRight: UIImage?) {
        label.text = labelRight
        imageR.image = imageRight
        configureBaseCell(text: text, color: color, imageImage: imageImage)
    }
}
