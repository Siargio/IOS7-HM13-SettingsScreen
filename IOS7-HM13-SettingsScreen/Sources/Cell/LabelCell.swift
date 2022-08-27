//
//  LabelCell.swift
//  IOS7-HM13-SettingsScreen
//
//  Created by Sergio on 26.08.22.
//

import UIKit
import SnapKit

class LabelCell: BaseCell {

    private lazy var label: UILabel = {
        let labelRight = UILabel()
        labelRight.textColor = .lightGray
        return labelRight
    } ()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        self.addSubview(label)

        label.snp.makeConstraints {
            $0.centerY.equalTo(contentView)
            $0.trailing.equalTo(-35)
        }
    }
    
    func configureCell(text: String, color: UIColor, imageImage: UIImage, labelRight: String) {
        label.text = labelRight
        configureBaseCell(text: text, color: color, imageImage: imageImage)
    }
}
