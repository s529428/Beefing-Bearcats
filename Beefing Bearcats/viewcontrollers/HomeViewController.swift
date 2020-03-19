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
        if let path1 = Bundle.main.path(forResource: "Front11", ofType: ".png")
        {
            front.image=UIImage(contentsOfFile: path1)
        }
    }
    
    @IBAction func clickMeback(sender:UIButton){
        if let path2 = Bundle.main.path(forResource: "Back11", ofType: ".png")
        {
            front.image=UIImage(contentsOfFile: path2)
        }
    }
    
    
    @IBAction func muscleList(_ sender: AnyObject) {
//        let muscleList = storyboard?.instantiateViewController(withIdentifier: "AddNewRecord") as! AddNewRecordViewController
//        self.navigationController!.pushViewController(muscleList, animated: true)
        
        let muscleTVC = storyboard?.instantiateViewController(withIdentifier: "MuscleListNC") as! MuscleListTableViewController
        self.navigationController!.pushViewController(muscleTVC, animated: true)
    }
    

    required init?(coder: NSCoder)
    {
        super.init(coder: coder)
        self.tabBarItem.image = UIImage(named: "icons8-ios-filled-36.png")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarItem.image = UIImage(named: "icons8-ios-filled-36.png")
        navigationItem.title = "BEEFING BEARCATS"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "More info", style: .plain, target: self, action: #selector(moreInfo))
        
        
        if let path1 = Bundle.main.path(forResource: "Front11", ofType: ".png")
        {
            front.image=UIImage(contentsOfFile: path1)
        }
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func moreInfo(){
        let ac = UIAlertController(title: "More info", message: "This app will help users have more viared and accurate to their goals weight routines. As far as we have researched there are no free apps on the app store that helps users pick exercises based on specific muscle groups they wish to develop. This app is meant for people who do not wish to invest in a personal trainer or do not know where to start, but still want to get ‘beefy’", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel)
        ac.addAction(action)
        self.present(ac, animated: true)
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
