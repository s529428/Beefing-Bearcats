//
//  PlansTableViewController.swift
//  Beefing Bearcats
//
//  Created by Caroline Finnerty on 2/23/20.
//  Copyright © 2020 Finnerty,Caroline A. All rights reserved.
//

import UIKit

class PlansTableViewController: UITableViewController {

    @IBOutlet weak var plansTV: UITableView!
    
    let planArray = ["Plan One","Plan Two","Plan Three"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarItem.image = UIImage(named: "icons8-dumbbell-36.png")
        
        plansTV.dataSource = self
        plansTV.delegate = self
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlansCell", for: indexPath)

      
        cell.textLabel!.text = planArray[indexPath.row]

        return cell
    }
}
