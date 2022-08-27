//
//  Extensions.swift
//  IOS7-HM13-SettingsScreen
//
//  Created by Sergio on 25.08.22.
//

import UIKit

enum CellType {
    case switchCell
    case labelCell
    case defaultCell
}

struct SetupSections {
    var sectionsNumber: Int
    var setupsItem: [Setups]
}

struct Setups {
    var image: UIImage
    var name: String
    var color: UIColor
    var labelRight: String?
    var imageRight: UIImage? //= UIImage(systemName: "1.circle.fill")
    var cellType: CellType
}

extension SetupSections {
    static var setupSections: [SetupSections] = [
        SetupSections(sectionsNumber: 0, setupsItem: [
        Setups(image: UIImage(systemName: "airplane")!, name: "Авиарежим", color: .systemOrange, cellType: .switchCell),
        Setups(image: UIImage(systemName: "wifi")!, name: "Wi-Fi", color: .systemBlue, labelRight: "Не подключено", cellType: .labelCell),
        Setups(image: UIImage(systemName: "wifi")!, name: "Bluetooth", color: .systemBlue, labelRight: "Вкл.", cellType: .labelCell),
        Setups(image: UIImage(systemName:"antenna.radiowaves.left.and.right")!, name: "Сотовая связь", color: .systemGreen, cellType: .defaultCell),
        Setups(image: UIImage(systemName: "personalhotspot")!, name: "Режим модема", color: .systemGreen, cellType: .defaultCell),
        Setups(image: UIImage(systemName: "wifi")!, name: "VPN", color: .systemBlue, cellType: .switchCell)]),

        SetupSections(sectionsNumber: 1, setupsItem: [
        Setups(image: UIImage(systemName: "bell.badge.fill")!, name: "Уведомления", color: .systemRed, cellType: .defaultCell) ,
        Setups(image: UIImage(systemName: "speaker.wave.3.fill")!, name: "Звуки, тактильные сигналы", color: .systemRed, cellType: .defaultCell),
        Setups(image: UIImage(systemName: "moon.fill")!, name: "Не беспокоить", color: .systemIndigo, cellType: .defaultCell),
        Setups(image: UIImage(systemName: "hourglass")!, name: "Экранное время", color: .systemIndigo, cellType: .defaultCell)]),

        SetupSections(sectionsNumber: 2, setupsItem: [
        Setups(image: UIImage(systemName: "gear")!, name: "Основные", color: .systemGray, imageRight: UIImage(systemName: "1.circle.fill"), cellType: .labelCell),
        Setups(image: UIImage(systemName: "switch.2")!, name: "Пункты управления", color: .systemGray, cellType: .defaultCell),
        Setups(image: UIImage(systemName: "textformat.size")!, name: "Экран и яркость", color: .systemBlue, cellType: .defaultCell),
        Setups(image: UIImage(systemName: "wifi")!, name: "Экран «Домой»", color: .systemBlue, cellType: .defaultCell),
        Setups(image: UIImage(named: "accessibility")!, name: "Универсальный доступ", color: UIColor.systemBlue, cellType: .defaultCell),
        Setups(image: UIImage(systemName: "circle.hexagongrid.circle")!, name: "Обои", color: UIColor.systemBlue, cellType: .defaultCell),
        Setups(image: UIImage(systemName: "globe.asia.australia.fill")!, name: "Siri и Поиск", color: UIColor.systemPurple, cellType: .defaultCell),
        Setups(image: UIImage(systemName: "faceid")!, name: "Face ID и код-пароль", color: .systemGreen, cellType: .defaultCell),
        Setups(image: UIImage(systemName: "moon.fill")!, name: "Экстренный вызов - SOS", color: UIColor.systemRed, cellType: .defaultCell),
        Setups(image: UIImage(systemName: "circle.hexagongrid.circle.fill")!, name: "Уведомление о контакте", color: UIColor.systemRed, cellType: .defaultCell),
        Setups(image: UIImage(systemName: "battery.100")!, name: "Аккумулятор", color: .systemGreen, cellType: .defaultCell),
        Setups(image: UIImage(systemName: "hand.raised.fill")!, name: "Конфиденциальность", color: .systemBlue, cellType: .defaultCell)])
        ]
}
