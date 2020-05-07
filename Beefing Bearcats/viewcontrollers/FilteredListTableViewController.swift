//
//  FilteredListTableViewController.swift
//  Beefing Bearcats
//
//  Created by student on 4/13/20.
//  Content by Gangadhar Yerramsetti
//  Copyright © 2020 Finnerty,Caroline A. All rights reserved.
//

import UIKit
import Firebase
import FirebaseFirestore

// This class pulls exercise data from database and builds an array of table view cells
class FilteredListTableViewController: UITableViewController {
    
    var exercisesMuscle:String = ""
    var exerciseDesc:[String:Any] = [:]
    var exerciseArray:[String] = []
    var exerciseHow:[String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // firestore db is connected a constant in swift
        let db = Firestore.firestore()
        
        
        // collection MuscleExercises from database is pulled.
        
        _ = db.collection("MuscleExercises").getDocuments { (snapshot, error) in
            if error == nil && snapshot != nil{
                for document in snapshot!.documents{
                    if document.documentID == self.exercisesMuscle{
                        for field in document.data(){
                            self.exerciseDesc[field.key] = field.value
                            print(field.key.uppercased())
                            print(field.value)
                            self.tableView.reloadData()
                            
                            self.exerciseArray.append(field.key)
                            self.exerciseHow.append("\(field.value)")
                        }
                    }
                }
            }
        }
        
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.exerciseDesc.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300.0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExerciseDetails", for: indexPath)
        
        //if let
        let exercisenameLBL = cell.viewWithTag(10) as! UILabel
        let exerciseDetailLbL = cell.viewWithTag(20) as! UILabel
        print(indexPath.row)
        exercisenameLBL.text = exerciseArray[indexPath.row]
        exerciseDetailLbL.text = exerciseHow[indexPath.row]
        
        
        return cell
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
