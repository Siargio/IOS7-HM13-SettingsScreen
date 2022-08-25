//
//  ExtensionsViewController.swift
//  IOS7-HM13-SettingsScreen
//
//  Created by Sergio on 25.08.22.
//

import UIKit

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        namesSetup.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = namesSetup[indexPath.row]
        cell.imageView?.image = UIImage(systemName: images[indexPath.row])
        //cell.tintColor?.tintColor = UIColor(colors[indexPath.row])
        return cell
    }
}
