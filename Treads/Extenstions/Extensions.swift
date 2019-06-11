//
//  Extensions.swift
//  Treads
//
//  Created by Mahesh Prasad on 11/06/19.
//  Copyright © 2019 CreatesApps. All rights reserved.
//

import Foundation

extension Double {
    func metersToKm(place: Int) -> Double {
        let divisor = pow(10.0, Double(place))
        return ((self/1000)*divisor).rounded() / divisor
    }
}
