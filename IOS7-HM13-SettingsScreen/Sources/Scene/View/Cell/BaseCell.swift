//
//  BaseCell.swift
//  IOS7-HM13-SettingsScreen
//
//  Created by Sergio on 26.08.22.
//

import UIKit

class BaseCell: UITableViewCell {
    
    // MARK: - UIElements

    private lazy var image: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleToFill
        image.layer.cornerRadius = 8
        return image
    }()
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.textColor = .black
        return label
    }()

    private lazy var imageIm: UIImageView = {
        let imageIm = UIImageView()
        imageIm.tintColor = .white
        return imageIm
    }()

    private lazy var separatorView: UIView = {
        let separatorView = UIView()
        separatorView.backgroundColor = .lightGray
        return separatorView
    }()
    
    // MARK: - Lifecycle

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    // MARK: - Setup
    
    private func setupHierarchy() {
        self.addSubview(image)
        self.addSubview(label)
        self.addSubview(imageIm)
        self.addSubview(separatorView)
    }

    private func setupLayout() {
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
            $0.size.equalTo(image).inset(4) // меняет размер картинки
        }

        separatorView.snp.makeConstraints {
            $0.trailing.bottom.equalToSuperview()
            $0.leading.equalTo(label)
            $0.height.equalTo(0.5)
        }
    }

    func configuration(data: Setups?) {
        image.backgroundColor = data?.color
        label.text = data?.name
        imageIm.image = data?.image
    }
}
