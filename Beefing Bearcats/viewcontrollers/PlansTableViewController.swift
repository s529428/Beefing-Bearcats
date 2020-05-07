//
//  PlansTableViewController.swift
//  Beefing Bearcats
//
//  Created by Caroline Finnerty on 2/23/20.
//  Copyright © 2020 Finnerty,Caroline A. All rights reserved.
//

import UIKit
// To display all the plans in a table view controller
class PlansTableViewController: UITableViewController {
    
    @IBOutlet weak var plansTV: UITableView!
    
    let planArray = ["10 Days Action plan",
                     "30 Days Action plan",
                     "60 Days Action plan",
                     "120 Days Action plan",
                     "210 Days Action plan",
                     "365 Days Action plan"
    ]
    // To load the tabbar image while initializing app
    required init?(coder: NSCoder)
    {
        super.init(coder: coder)
        self.tabBarItem.image = UIImage(named: "icons8-dumbbell-36.png")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        plansTV.dataSource = self
        plansTV.delegate = self
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planArray.count
    }
    
    //Configuring the cell details
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlansCell", for: indexPath)
        
        
        cell.textLabel!.text = planArray[indexPath.row]
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectPlanVC = storyboard?.instantiateViewController(withIdentifier: "SelectPlanViewController") as! SelectPlanViewController
        selectPlanVC.plan = Plans.shared.getPlan(indexPath.row)
        navigationController?.pushViewController(selectPlanVC, animated: true)
    }
}
