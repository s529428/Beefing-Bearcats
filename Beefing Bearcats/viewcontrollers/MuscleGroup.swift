//
//  MuscleGroup.swift
//  Beefing Bearcats
//
//  Created by Gangadhar on 3/17/20.
//  Copyright © 2020 Finnerty,Caroline A. All rights reserved.
//

import Foundation
struct Muscle{
    let name:String
}

class MuscleGroups {
    
    private static var _shared : MuscleGroups!
    
    static var shared:MuscleGroups {
        if _shared == nil {
            _shared = MuscleGroups()
        }
        return _shared
    }
    
    private var muscleGroups:[Muscle] = [
        Muscle(name: "Arm"),
        Muscle(name: "Legs"),
        Muscle(name: "Biceps"),
        Muscle(name: "Ham Strings"),
        Muscle(name: "Triceps"),
        Muscle(name: "Shoulder")
        
    ]
    
    private init(){
        
    }
    
    func getMuscle(_ index:Int) -> Muscle? {
        if index >= 0 && index < muscleGroups.count {
            return muscleGroups[index]
        } else {
            return nil
        }
    }
    
    func numMuscles() -> Int {
        return muscleGroups.count
    }
    
    
}

