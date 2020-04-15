//
//  ExcersiceListTableViewController.swift
//  Beefing Bearcats
//
//  Created by student on 3/17/20.
//  Copyright © 2020 Finnerty,Caroline A. All rights reserved.
//

import UIKit
import FirebaseFirestore
import Firebase

class MuscleListTableViewController: UITableViewController {
    
    
    
    var muscleListArray:[String] = []
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    //    let db  = Firestore.firestore()
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
        //print(muscleListArray.count)
        return muscleListArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "muscleGroupList", for: indexPath)

        // Configure the cell...
        cell.textLabel!.text = muscleListArray[indexPath.row]
        

        return cell
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let muscleDetailVC = storyboard?.instantiateViewController(withIdentifier: "FilteredMuscleVC") as! FilteredListTableViewController
       // excersiceDetailVC.exercise = Exercises.shared.getExercise(indexPath.row)
        
       // ref = Database.database().reference()
        
        
        
        // Retrieve the posts and listen for changes
        //databaseHandle = ref?.child("Posts").observe(.childAdded, with: { (snapshot) in
            // Code to execute when a child is added under "posts"
            // Take the value from the snapshot and add it to the PostData array
            
          //  let post = snapshot.value as? String
            
           // muscleDetailVC.messageTextView.text = self.postData[indexPath.row]
            
        //    }
        
      //  )
        
        
        navigationController?.pushViewController(muscleDetailVC, animated: true)
        
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
