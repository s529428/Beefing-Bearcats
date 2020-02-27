//
//  Records.swift
//  Beefing Bearcats
//
//  Created by student on 2/27/20.
//  Copyright © 2020 Finnerty,Caroline A. All rights reserved.
//

import Foundation
struct Record {
    var name:String
    var repitations:Int
    var Sets:Int
    var weight:Double
}

/// A collection of fine dining establishments, aka Restaurants
class Records {
    
    private static var _shared:Records! // Only visible in this struct
    
    static var shared:Records {         // To access this anywhere, in the app just write Restaurants.shared
        if _shared == nil {
            _shared = Records()
        }
        return _shared
    }
    
    private var records:[Record] = [ Record(name:"Demo1",repitations: 1,Sets: 2,weight: 10),
                                         Record(name:"Demo1",repitations: 1,Sets: 2,weight: 10),
        Record(name:"Demo1",repitations: 1,Sets: 2,weight: 10),
        Record(name:"Demo1",repitations: 1,Sets: 2,weight: 10),
        Record(name:"Demo1",repitations: 1,Sets: 2,weight: 10),
        Record(name:"Demo1",repitations: 1,Sets: 2,weight: 10)
    ]
    
    private init(){                         // We can't make another Restaurants instance, which is a Good Thing: we only want 1 model
    }
    
    /// returns the number of restaurents
    func numberOfRecords() -> Int
    {
        return records.count
    }
    
    /// Returns restaurant at a given index, nil if non-existant
    /// Example usage:  Restaurants.shared.getRestaurant(at:5)
    /// - Parameter index: restaurant to return
    
    func getRecord(at index:Int)->Record? {
        if index >= 0 && index < records.count {
            return records[index]
        } else {
            return nil
        }
    }
    
    // Alternatively, we could subscript Restaurants, so usage would be Restaurants.shared[5]
    
    subscript(index:Int) -> Record? {
        return index >= 0 && index < records.count ? records[index] : nil
    }
    
    /// Adds a restaurant to the collection
    /// Example usage: Restaurants.shared.add(restaurant:Restaurant(name:"A & G", rating:4))
    /// - Parameter restaurant: restaurant to add
    
     func add(record:Record){
        records.append(record)
    }
    func delete(at:Int)
    {
        records.remove(at: at)
    }
    
}
