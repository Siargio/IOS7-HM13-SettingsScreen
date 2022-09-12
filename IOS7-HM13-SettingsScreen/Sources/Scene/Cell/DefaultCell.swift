//
//  DefaultCell.swift
//  IOS7-HM13-SettingsScreen
//
//  Created by Sergio on 26.08.22.
//

import UIKit

class DefaultCell: BaseCell {
    
    // MARK: - Elements
    
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
    }
    
    func configureCell(text: String, color: UIColor, imageImage: UIImage) {
        configureBaseCell(text: text, color: color, imageImage: imageImage)
    }
}
