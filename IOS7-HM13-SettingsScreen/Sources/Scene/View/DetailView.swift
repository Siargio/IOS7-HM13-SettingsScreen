//
//  DetailView.swift
//  IOS7-HM13-SettingsScreen
//
//  Created by Sergio on 12.09.22.
//

import UIKit

final class DetailView: UIView {

    // MARK: - UIElements
    
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
        imageView.tintColor = .white
        return imageView
    }()

    lazy var label: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = .white
        return label
    }()

    // MARK: - Initialisers

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemGray
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setup

    private func setupHierarchy() {
        addSubview(imageView)
        addSubview(label)
    }

    private func setupLayout() {
        imageView.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.width.height.equalTo(150)
        }

        label.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(imageView.snp.bottom).offset(20)
        }
    }

    // MARK: - Configuration

    func configuration(data: Setups?) {
        imageView.image = data?.image
        label.text = data?.name
    }
}
