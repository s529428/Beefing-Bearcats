//
//  Plan.swift
//  Beefing Bearcats
//
//  Created by student on 3/22/20.
//  Copyright © 2020 Finnerty,Caroline A. All rights reserved.
//

import Foundation
// Plan struct to define properties of a plan.
struct Plan {
    let exer1:String
    let explanation1:String
    let imagePath1:String
    let exer2:String
    let explanation2:String
    let imagePath2:String
    let exer3:String
    let explanation3:String
    let imagePath3:String
    let exer4:String
    let explanation4:String
    let imagePath4:String
}

// Configuring the plan details
class Plans {
    private static var _shared:Plans!
    
    static var shared:Plans {
        if _shared == nil {
            _shared = Plans()
        }
        return _shared
    }
    //Static deatils of the plan.
    private var plans:[Plan] = [
        Plan(exer1: "EZ Bar Curl", explanation1: "", imagePath1: "",
             exer2: "Chin up", explanation2: "", imagePath2: "",
             exer3: "Dumbbell Curl", explanation3: "", imagePath3: "",
             exer4: "Hammer Curl", explanation4: "", imagePath4: ""),
        Plan(exer1: "Standard Push-Up", explanation1: "", imagePath1: "",
             exer2: "One-Arm Overhead Extension", explanation2: "", imagePath2: "",
             exer3: "Dips", explanation3: "", imagePath3: "",
             exer4: "Lying Triceps Extension", explanation4: "", imagePath4: ""),
        Plan(exer1: "Barbell Bench Press", explanation1: "", imagePath1: "",
             exer2: "Dumbbell Bench Press", explanation2: "", imagePath2: "",
             exer3: "Incline Bench Press", explanation3: "", imagePath3: "",
             exer4: "Incline bench fly", explanation4: "", imagePath4: ""),
        Plan(exer1: "Back Squat", explanation1: "", imagePath1: "",
             exer2: "Leg Press", explanation2: "", imagePath2: "",
             exer3: "Bodyweight Lunge", explanation3: "", imagePath3: "",
             exer4: "Leg Curls", explanation4: "", imagePath4: ""),
        Plan(exer1: "Barbell Deadlift", explanation1: "", imagePath1: "",
             exer2: "Bent-Over Barbell Rows", explanation2: "", imagePath2: "",
             exer3: "Wide-Grip Pull-Up", explanation3: "", imagePath3: "",
             exer4: "Seated Rows", explanation4: "", imagePath4: ""),
        Plan(exer1: "Barbell Overhead Shoulder Press", explanation1: "", imagePath1: "",
             exer2: "Push Press", explanation2: "", imagePath2: "",
             exer3: "Seated Dumbbell Shoulder Press", explanation3: "", imagePath3: "",
             exer4: "Reverse Pec Deck Fly", explanation4: "", imagePath4: ""),
        Plan(exer1: "Interval Running", explanation1: "", imagePath1: "",
             exer2: "Bike", explanation2: "", imagePath2: "",
             exer3: "Stairs", explanation3: "", imagePath3: "",
             exer4: "Rows", explanation4: "", imagePath4: ""),
        Plan(exer1: "Sit Ups", explanation1: "", imagePath1: "",
             exer2: "Russian Twists", explanation2: "", imagePath2: "",
             exer3: "Reverse Crunches", explanation3: "", imagePath3: "",
             exer4: "Plank", explanation4: "", imagePath4: ""),
    ]
    
    private init(){
    }
    //Getting a single plan
    func getPlan(_ index:Int) -> Plan? {
        if index >= 0 && index < plans.count {
            return plans[index]
        } else {
            return nil
        }
    }
    //Return total number of plans
    func returnPlans() -> Int {
        return plans.count
    }
}
