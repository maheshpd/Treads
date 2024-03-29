//
//  Location.swift
//  Treads
//
//  Created by Mahesh Prasad on 12/06/19.
//  Copyright © 2019 CreatesApps. All rights reserved.
//

import Foundation
import RealmSwift
class Location: Object {
    @objc dynamic public private(set) var latitude = 0.0
    @objc dynamic public private(set) var longitude = 0.0
    
    convenience init(latitude: Double, longitude: Double) {
        self.init()
        self.latitude = latitude
        self.longitude = longitude
    }
}
