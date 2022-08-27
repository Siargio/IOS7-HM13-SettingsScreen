//
//  ExtensionsViewController.swift
//  IOS7-HM13-SettingsScreen
//
//  Created by Sergio on 25.08.22.
//

import UIKit

extension ViewController: UITableViewDataSource, UITableViewDelegate {



    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].setupsItem.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cellData = data[indexPath.section].setupsItem[indexPath.row]

        switch data[indexPath.section].setupsItem[indexPath.row].cellType {
        case .defaultCell:
            return setupDefaultCell(tableView: tableView,
                                    text: cellData.name,
                                    color: cellData.color,
                                    imageImage: cellData.image,
                                    indexPath: indexPath)
        case .labelCell:
            return setupLabelCell(tableView: tableView,
                                  text: cellData.name,
                                  color: cellData.color,
                                  imageImage: cellData.image,
                                  labelRight: cellData.labelRight ?? "",
                                  imageRight: (cellData.imageRight ?? UIImage(named: "defaultImage"))!,
                                  indexPath: indexPath)
        case .switchCell:
            return setupSwitchCell(tableView: tableView,
                                   text: cellData.name,
                                   color: cellData.color,
                                   imageImage: cellData.image,
                                   indexPath: indexPath)
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailViewController = DetailViewController()
        self.navigationController?.pushViewController(detailViewController, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }

    private func setupDefaultCell(tableView: UITableView, text: String, color: UIColor, imageImage: UIImage, indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DefaultCell", for: indexPath) as? DefaultCell else { return UITableViewCell() }
        cell.configureCell(text: text, color: color, imageImage: imageImage)
        cell.accessoryType = .disclosureIndicator //добавил справа скобку
        return cell
    }

    private func setupLabelCell(tableView: UITableView, text: String, color: UIColor, imageImage: UIImage, labelRight: String, imageRight: UIImage, indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath) as? LabelCell else { return UITableViewCell() }
        cell.configureCell(text: text, color: color, imageImage: imageImage, labelRight: labelRight, imageRight: imageRight)
        cell.accessoryType = .disclosureIndicator
        return cell
    }

    private func setupSwitchCell(tableView: UITableView, text: String, color: UIColor, imageImage: UIImage, indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SwitchCell", for: indexPath) as? SwitchCell else { return UITableViewCell() }
        cell.configureCell(text: text, color: color, imageImage: imageImage)
        return cell
    }

//    private func setupBaseCell(tableView: UITableView, text: String, indexPath: IndexPath) -> UITableViewCell {
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: "BaseCell", for: indexPath) as? BaseCell else { return UITableViewCell() }
//        cell.configureCell(text: text)
//        return cell
//    }
    
}
