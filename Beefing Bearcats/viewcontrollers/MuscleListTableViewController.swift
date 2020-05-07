//
//  ExcersiceListTableViewController.swift
//  Beefing Bearcats
//
//  Created by student on 3/17/20.
//  Content by Gangadhar Yerramsetti
//  Copyright © 2020 Finnerty,Caroline A. All rights reserved.
//

import UIKit
import FirebaseFirestore
import Firebase

class MuscleListTableViewController: UITableViewController {
    
    
    
    var muscleListArray:[String] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // firestore connection to the database is established
        
        let db = Firestore.firestore()
        
        let muscleListArraydb = db.collection("MuscleExercises").getDocuments { (snapshot, error) in
            if error == nil && snapshot != nil{
                for document in snapshot!.documents{
                    // let documentData = document.data()
                    //  print(documentData)
                    print(document.documentID)
                    self.muscleListArray.append(document.documentID)
                    self.tableView.reloadData()
                }
            }
        }
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return muscleListArray.count
    }
    
    // Configure the table view cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "muscleGroupList", for: indexPath)
        
        cell.textLabel!.text = muscleListArray[indexPath.row]
        
        
        return cell
    }
    
    // Method identifies the cell selected
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let muscleDetailVC = storyboard?.instantiateViewController(withIdentifier: "FilteredMuscleVC") as! FilteredListTableViewController
        
        muscleDetailVC.exercisesMuscle = muscleListArray[indexPath.row]
        
        //    }
        
        //  )
        
        
        navigationController?.pushViewController(muscleDetailVC, animated: true)
        
    }
    
    
}
