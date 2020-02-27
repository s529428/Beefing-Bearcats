//
//  HomeViewController.swift
//  Beefing Bearcats
//
//  Created by Caroline Finnerty on 2/23/20.
//  Copyright © 2020 Finnerty,Caroline A. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var front:UIImageView!
    @IBAction func clickMefront(sender:UIButton)
    {
        if let path1 = Bundle.main.path(forResource: "Front", ofType: ".png")
        {
            front.image=UIImage(contentsOfFile: path1)
        }
    }
    
    @IBAction func clickMeback(sender:UIButton){
        if let path2 = Bundle.main.path(forResource: "Back", ofType: ".png")
        {
            front.image=UIImage(contentsOfFile: path2)
        }
    }
    

    required init?(coder: NSCoder)
    {
        super.init(coder: coder)
        self.tabBarItem.image = UIImage(named: "icons8-ios-filled-36.png")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarItem.image = UIImage(named: "icons8-ios-filled-36.png")
        if let path1 = Bundle.main.path(forResource: "Front", ofType: ".png")
        {
            front.image=UIImage(contentsOfFile: path1)
        }
        

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
