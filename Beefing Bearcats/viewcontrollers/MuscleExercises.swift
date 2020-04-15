//
//  MuscleExercises.swift
//  Beefing Bearcats
//
//  Created by student on 4/13/20.
//  Copyright © 2020 Finnerty,Caroline A. All rights reserved.
//

import Foundation
import Firebase

struct MuscleExerciseList {
    let exercise:String
    let explanation:String
    
}

var ref: DatabaseReference!
var databaseHandle:DatabaseHandle!

class MuscleExercisesList {
    
    private static var _shared:MuscleExercisesList!
    
    static var shared:MuscleExercisesList {
        if _shared == nil {
            _shared = MuscleExercisesList()
        }
        return _shared
    }
    private init(){
           
       }
    
    private var exerciseList:[MuscleExerciseList] = []
}
