//
//  InitialTabBarController.swift
//  Beefing Bearcats
//
//  Created by student on 2/27/20.
//  Copyright © 2020 Finnerty,Caroline A. All rights reserved.
//

import UIKit

class InitialTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarItem.image = UIImage(named: "icons8-ios-filled-36.png")
        self.tabBarItem.image = UIImage(named: "icons8-dumbbell-36.png")
        self.tabBarItem.image = UIImage(named: "icons8-ios-filled-36.png")
        self.tabBarItem.image = UIImage(named: "icons8-ios-filled-36.png")
        // Do any additional setup after loading the view.
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
