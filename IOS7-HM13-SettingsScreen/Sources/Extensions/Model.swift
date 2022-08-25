//
//  Extensions.swift
//  IOS7-HM13-SettingsScreen
//
//  Created by Sergio on 25.08.22.
//

import UIKit

struct Setups: Hashable {
    var image: UIImage
    var name: String
    var color: UIColor = .systemBlue
    var isToggle: Bool?
}

extension Setups {
    static var setups: [[Setups]] = [
        [Setups(image: UIImage(systemName: "airplane")!, name: "Авиарежим", color: UIColor.systemYellow)],
        [Setups(image: UIImage(systemName: "wifi")!, name: "Wi-Fi", color: UIColor.systemYellow)],
        [Setups(image: UIImage(systemName: "wifi")!, name: "Bluetooth", color: UIColor.systemYellow)],
        [Setups(image: UIImage(systemName: "antenna.radiowaves.left.and.right")!, name: "Сотовая связь", color: UIColor.systemYellow)],
        [Setups(image: UIImage(systemName: "personalhotspot")!, name: "Режим модема", color: UIColor.systemYellow)],
        [Setups(image: UIImage(systemName: "wifi")!, name: "VPN", color: UIColor.systemYellow)],
        [Setups(image: UIImage(systemName: "bell.badge.fill")!, name: "Уведомления", color: UIColor.systemYellow)],
        [Setups(image: UIImage(systemName: "speaker.wave.3.fill")!, name: "Звуки, тактильные сигналы", color: UIColor.systemYellow)],
        [Setups(image: UIImage(systemName: "moon.fill")!, name: "Не беспокоить", color: UIColor.systemYellow)],
        [Setups(image: UIImage(systemName: "hourglass")!, name: "Экранное время", color: UIColor.systemYellow)],
        [Setups(image: UIImage(systemName: "gear")!, name: "Основные", color: UIColor.systemYellow)],
        [Setups(image: UIImage(systemName: "switch.2")!, name: "Пункты управления", color: UIColor.systemYellow)],
        [Setups(image: UIImage(systemName: "textformat.size")!, name: "Экран и яркость", color: UIColor.systemYellow)],
        [Setups(image: UIImage(systemName: "wifi")!, name: "Экран <<Домой>>", color: UIColor.systemYellow)],
        [Setups(image: UIImage(systemName: "moon.fill")!, name: "Универсальный доступ", color: UIColor.systemYellow)],
        [Setups(image: UIImage(systemName: "airplane")!, name: "Обои", color: UIColor.systemYellow)],
        [Setups(image: UIImage(systemName: "moon.fill")!, name: "Siri и Поиск", color: UIColor.systemYellow)],
        [Setups(image: UIImage(systemName: "faceid")!, name: "Face ID и код-пароль", color: UIColor.systemYellow)],
        [Setups(image: UIImage(systemName: "moon.fill")!, name: "Экстренный вызов - SOS", color: UIColor.systemYellow)],
        [Setups(image: UIImage(systemName: "wifi")!, name: "Уведомление о контакте", color: UIColor.systemYellow)],
        [Setups(image: UIImage(systemName: "battery.100")!, name: "Аккумулятор", color: UIColor.systemYellow)],
        [Setups(image: UIImage(systemName: "hand.raised.fill")!, name: "Конфиденциальность", color: UIColor.systemYellow)]
    ]
}
