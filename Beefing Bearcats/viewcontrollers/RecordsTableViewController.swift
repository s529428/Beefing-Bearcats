//
//  RecordsTableViewController.swift
//  Beefing Bearcats
//
//  Created by Caroline Finnerty on 2/23/20.
//  Copyright © 2020 Finnerty,Caroline A. All rights reserved.
//

import UIKit


class RecordsTableViewController: UITableViewController {

    var records=Records.shared
    
    required init?(coder: NSCoder)
    {
        super.init(coder: coder)
        self.tabBarItem.image = UIImage(named: "icons8-trophy-36.png")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("loading records")
        navigationItem.title="Records"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add Record", style: .done, target: self, action: #selector(addRecord))
        NotificationCenter.default.addObserver(self, selector: #selector(recordAdded(notification:)), name: NSNotification.Name(rawValue:"Added Record"), object: nil)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    @objc func addRecord(){
         
             let addNewPlanVC = storyboard?.instantiateViewController(withIdentifier: "AddNewRecord") as! AddNewRecordViewController
            
             self.present(addNewPlanVC, animated: true, completion: nil)
         }
    @objc func recordAdded(notification:Notification){
     
        tableView.reloadData()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return records.numberOfRecords()
    }
    
    let d:CGFloat = 300

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return d
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            // Configure the cell...
        let cell = tableView.dequeueReusableCell(withIdentifier: "record", for: indexPath)
        if let record=Records.shared[indexPath.row]
        {
            let nameLBL = cell.viewWithTag(10) as! UILabel
            let repitationTF = cell.viewWithTag(100) as! UITextField
            let setsTF = cell.viewWithTag(200) as! UITextField
            let weightTF = cell.viewWithTag(300) as! UITextField
            nameLBL.text = record.name
            
            repitationTF.text=String(record.repitations)
            setsTF.text=String(record.Sets)
            weightTF.text=String(record.weight)
            
            
        }

        
        return cell
    }
    

   
}
