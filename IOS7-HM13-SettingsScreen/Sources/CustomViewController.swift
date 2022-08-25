//
//  CustomViewController.swift
//  IOS7-HM13-SettingsScreen
//
//  Created by Sergio on 25.08.22.
//

import UIKit

class CustomViewController: UITableViewCell {

    var setup: Setups? {
        didSet {
            image.image = setup?.image
            name.text = setup?.name
            //color. = setup?.color
        }
    }

    // MARK: - Outlets

    private let image: UIImageView = {
        let image = UIImageView()
//        image.contentMode = .scaleAspectFit
//        image.clipsToBounds = true
//        //image.layer.cornerRadius = 30
        return image
    } ()

    private let name: UILabel = {
        let name = UILabel()
        name.font = UIFont.systemFont(ofSize: 13, weight: .medium)
        name.textAlignment = .left
        return name
    } ()

//    private let stack: UIStackView = {
//        let stack = UIStackView()
//        stack.alignment = .leading
//        stack.axis = .vertical
//        stack.distribution = .fill
//        stack.spacing = 1
//        return stack
//    } ()
    
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

    private func setupHierarchy() {
        addSubview(image)
        addSubview(name)
//        stack.addArrangedSubview(image)
//        stack.addArrangedSubview(name)
//        addSubview(stack)
    }

    private func setupLayout() {
        image.snp.makeConstraints {
            $0.leading.equalTo(20)
            $0.centerY.equalToSuperview()
        }

        name.snp.makeConstraints {
            $0.leading.equalTo(image.snp.trailing).offset(20)
            $0.centerY.equalTo(image.snp.centerY)
        }

//        //stack.snp.makeConstraints {
//            $0.centerY.centerY.equalToSuperview()
//        }
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryType = .none
        self.setup = nil
    }
}
