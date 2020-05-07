//
//  excersiceInfoTableViewController.swift
//  Beefing Bearcats
//
//  Created by Caroline Finnerty on 2/23/20.
//  Content by Gangadhar Yerramsetti
//  Copyright © 2020 Finnerty,Caroline A. All rights reserved.
//

import UIKit

class ExcersiceTableViewController: UITableViewController {
    
    // To load the tabbar image while initializing app
    required init?(coder: NSCoder)
    {
        super.init(coder: coder)
        self.tabBarItem.image = UIImage(named: "icons8-ios-filled-excercise-small.png")
        navigationItem.title = "EXCERSICES"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    // reloading the table data whean wver the view appears.
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180.0
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Exercises.shared.numExercises()
    }
    
    // Seeting the cell details
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "excersiceDescription")!
        let nameLBL = cell.viewWithTag(44) as! UILabel
        let explanationLBL = cell.viewWithTag(45) as! UILabel
        nameLBL.text = Exercises.shared.getExercise(indexPath.row)!.name.uppercased()
        explanationLBL.text = Exercises.shared.getExercise(indexPath.row)!.explanation
        return cell
    }
    
    
    // configures the cell to display the list of specific muscle group exercises
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let excersiceDetailVC = storyboard?.instantiateViewController(withIdentifier: "excerciseDetailViewController") as! ExcerciseDetailViewController
        excersiceDetailVC.exercise = Exercises.shared.getExercise(indexPath.row)
        navigationController?.pushViewController(excersiceDetailVC, animated: true)
    }
    
    
    
    
}

