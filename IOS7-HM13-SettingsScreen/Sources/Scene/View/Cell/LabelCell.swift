//
//  LabelCell.swift
//  IOS7-HM13-SettingsScreen
//
//  Created by Sergio on 26.08.22.
//

import UIKit
import SnapKit

final class LabelCell: BaseCell {
    
    // MARK: - UIElements

    private lazy var label: UILabel = {
        let labelRight = UILabel()
        labelRight.textColor = .lightGray
        return labelRight
    }()

    private lazy var imageR: UIImageView = {
        let image = UIImage()
        let imageR = UIImageView(image: image)
        imageR.tintColor = .systemRed
        return imageR
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

    // MARK: - Setup
    
    func setupHierarchy() {
        self.addSubview(imageR)
        self.addSubview(label)
    }

    func setupLayout() {
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

    override func configuration(data: Setups?) {
        super.configuration(data: data!)
        label.text = data?.labelRight
        imageR.image = data?.imageRight
    }
}
