//
//  Excersice.swift
//  Beefing Bearcats
//
//  Created by Caroline Finnerty on 2/26/20.
//  Copyright © 2020 Finnerty,Caroline A. All rights reserved.
//

import Foundation


struct Exercise {
    let name:String
    let explanation:String
    let imagePath:String
    
}

class Exercises {
    
    private static var _shared:Exercises!
    
    static var shared:Exercises {
        if _shared == nil {
            _shared = Exercises()
        }
        return _shared
    }
    
    private var exercises:[Exercise] = [
        Exercise(name: "Military Press", explanation: "Start with the barbell resting on your collar bone, around shoulder height. Then lift the weight up until your arms are almost fully extended straight up. Finish one rep by lowering the weight back down to collarbone.", imagePath: ""),
        Exercise(name: "Deadlift", explanation: "Bend your knees and bend over with a flat back to pick up a loaded barbell of the ground", imagePath: "")
    ]
    
    private init(){
        
    }
    
    func getExercise(_ index:Int) -> Exercise? {
        if index >= 0 && index < exercises.count {
            return exercises[index]
        } else {
            return nil
        }
    }
    
    func numExercises() -> Int {
        return exercises.count
    }
    
    
}


