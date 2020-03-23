//
//  SelectPlanViewController.swift
//  Beefing Bearcats
//
//  Created by student on 3/22/20.
//  Copyright © 2020 Finnerty,Caroline A. All rights reserved.
//

import UIKit

class SelectPlanViewController: UIViewController {

    var plan:Plan!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var exerciseOneName:UILabel!
    @IBOutlet weak var exerciseOneDescriptionLBL:UILabel!
    @IBOutlet weak var exerciseOneIV:UIImageView!
    @IBOutlet weak var exerciseTwoName:UILabel!
    @IBOutlet weak var exerciseTwoDescriptionLBL:UILabel!
    @IBOutlet weak var exerciseTwoIV:UIImageView!
    @IBOutlet weak var exerciseThreeName:UILabel!
    @IBOutlet weak var exerciseThreeDescriptionLBL:UILabel!
    @IBOutlet weak var exerciseThreeIV:UIImageView!
    @IBOutlet weak var exerciseFourName:UILabel!
    @IBOutlet weak var exerciseFourDescriptionLBL:UILabel!
    @IBOutlet weak var exerciseFourIV:UIImageView!
    
    
    override func viewWillAppear(_ animated: Bool) {
        exerciseOneName.text = plan.exer1
        exerciseOneDescriptionLBL.text = plan.explanation1
        exerciseTwoName.text = plan.exer2
        exerciseTwoDescriptionLBL.text = plan.explanation2
        exerciseThreeName.text = plan.exer3
        exerciseThreeDescriptionLBL.text = plan.explanation3
        exerciseFourName.text = plan.exer4
        exerciseFourDescriptionLBL.text = plan.explanation4
    }
}
