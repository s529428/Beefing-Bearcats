//
//  AddNewRecordViewController.swift
//  Beefing Bearcats
//
//  Created by student on 3/16/20.
//  Copyright © 2020 Finnerty,Caroline A. All rights reserved.
//

import UIKit

class AddNewRecordViewController: UIViewController {

    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var setsTF: UITextField!
    @IBOutlet weak var weightTF: UITextField!
    @IBOutlet weak var RepitationTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func addRecord(_ sender: Any) {
        if let name = nameTF.text{
            if let repitation = Int(RepitationTF.text!){
                if let sets=Int(setsTF.text!){
                    if let weight=Double(weightTF.text!)
                    {
                        let record=Record(name: name, repitations: repitation, Sets: sets, weight: weight)
                        Records.shared.add(record: record)
                        NotificationCenter.default.post(name: NSNotification.Name(rawValue:"Added Record"), object: nil)
                        self.dismiss(animated: true, completion: nil)
                    }
                    else
                    {
                        alertMessage("Wrong weight","Please enter the weight correctly")
                    }
                }
                else
                {
                    alertMessage("Wrong sets","Please enter the sets correctly")
                }
            }
            else
            {
                alertMessage("Wrong repitition","Please enter the repitition correctly")
            }
        }else
        {
            alertMessage("Wrong name","Please enter the name correctly")
        }
    }
    
    @IBAction func cancelRecord(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    func alertMessage(_ titleText:String,_ messageText:String){
        let ac=UIAlertController(title: titleText, message: messageText, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .cancel)
        ac.addAction(action)
        self.present(ac,animated: true)
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