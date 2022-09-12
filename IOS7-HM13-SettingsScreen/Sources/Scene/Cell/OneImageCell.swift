//
//  OneImageCell.swift
//  IOS7-HM13-SettingsScreen
//
//  Created by Sergio on 27.08.22.
//

import UIKit
import SnapKit

class OneImageCell: BaseCell {

    // MARK: - Outlets

    private lazy var imageRight: UIImageView = {
        let imageRight = UIImageView()
        return imageRight
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
        self.addSubview(imageRight)

        imageRight.snp.makeConstraints {
            $0.centerY.equalTo(contentView)
            $0.trailing.equalTo(-35)
        }
    }

    func configureCell(text: String, color: UIColor, imageImage: UIImage, labelRight: String) {
        configureBaseCell(text: text, color: color, imageImage: imageImage)
    }
}

