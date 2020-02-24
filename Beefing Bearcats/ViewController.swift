//
//  ViewController.swift
//  Beefing Bearcats
//
//  Created by student on 2/24/20.
//  Copyright © 2020 Finnerty,Caroline A. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var PlansTV: UITableView!
    
    let plansArray = ["Plan One","Plan Two","Plan Three"]
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return plansArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlansCell", for: indexPath)
        
        cell.textLabel?.text = plansArray[indexPath.row]
        
        return cell
    }
    
    
    
    
}
