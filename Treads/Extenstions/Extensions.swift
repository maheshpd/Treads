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

extension Int {
    func formatTimeDurationToString() -> String {
        let durationHours = self / 3600
        let durationMinutes = (self % 3600) / 60
        let durationSeconds = (self % 3600) % 60
        
        if durationSeconds < 0 {
            return "00:00:00"
        }else {
            if durationHours == 0 {
                return String(format: "%02d:%02d", durationMinutes,durationSeconds)
            }else {
                return String(format: "%02d:%02d:%02d", durationHours,durationMinutes,durationSeconds)
            }
        }
    }
}

extension NSDate {
    func getDateString() -> String {
        let calender = Calendar.current
        let month = calender.component(.month, from: self as Date)
        let day = calender.component(.day, from: self as Date)
        let year = calender.component(.year, from: self as Date)
        return "\(month)/\(day)/\(year)"
    }
}
