//
//  Run.swift
//  Treads
//
//  Created by Mahesh Prasad on 11/06/19.
//  Copyright © 2019 CreatesApps. All rights reserved.
//

import Foundation
import RealmSwift

class Run: Object {
    dynamic public private(set) var id = ""
    dynamic public private(set) var pace = 0
    dynamic public private(set) var duration = 0
    dynamic public private(set) var distance = 0.0
    dynamic public private(set) var date = NSDate()
    
    override class func primaryKey() -> String {
        return "id"
    }
    
    override class func indexedProperties() -> [String] {
        return["pace","date","duration"]
    }
    
    convenience init(pace: Int, distance: Double, duration: Int) {
        self.init()
        self.id = UUID().uuidString.lowercased()
        self.date = NSDate()
        self.pace = pace
        self.distance = distance
        self.duration = duration
        
    }
}
