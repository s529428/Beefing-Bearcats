//
//  RecordAddition.swift
//  Beefing Bearcats
//
//  Created by student on 2/27/20.
//  Copyright © 2020 Finnerty,Caroline A. All rights reserved.
//

import UIKit

extension RecordsTableViewController {
    @objc func add(){
        let ac = UIAlertController(title: "Add Record", message: "Specify name - hours!", preferredStyle: .alert)
        ac.addTextField(configurationHandler: nil)
        let action = UIAlertAction(title: "OK", style: .default){
            (alertAction) -> Void in
            if let details = ac.textFields![0].text?.components(separatedBy: "~") {
                if details.count >= 2 {
                    let newRecord = Record(name: details[0], repitations: Int(details[1])!, Sets: Int(details[2])!, weight: Double(details[3])!)
                    Records.shared.add(record: newRecord)
                    self.tableView.reloadData()
                }
            }
        }
        ac.addAction(action)
        self.present(ac, animated: true, completion: nil)
    }
}
