//
//  ViewController.swift
//  Examples
//
//  Created by Takehito Koshimizu on 2018/04/21.
//

import UIKit
import Prefectures

class ViewController: UITableViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Prefecture.allCases.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = Prefecture.allCases[indexPath.row].description
        return cell
    }
}
