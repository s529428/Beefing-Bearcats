//
//  ExcerciseDetailViewController.swift
//  Beefing Bearcats
//
//  Created by Caroline Finnerty on 2/25/20.
//  Content by Gangadhar Yerramsetti
//  Copyright © 2020 Finnerty,Caroline A. All rights reserved.
//  Content by Gangadhar Yerramsetti

import UIKit

class ExcerciseDetailViewController: UIViewController {

    var exercise:Exercise!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = exercise.name.uppercased()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var exerciseName:UILabel!
    @IBOutlet weak var explanationLBL:UILabel!
    @IBOutlet weak var exerciseIV:UIImageView!
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        exerciseName.text = exercise.name.uppercased()
        explanationLBL.text = exercise.explanation
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
