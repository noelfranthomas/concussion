//
//  Activity.swift
//  Concussion
//
//  Created by Noel Thomas on 2020-11-15.
//

import Foundation

struct Activity: Codable, Identifiable {
    var physical : Int16 //Derived from HealthKit
    var mental : Int16 // From arbitrary calculations based on entered symptoms and mental activities
    var date : DateComponents
    var id = UUID().uuidString
}

let testActivityWeek = [
    Activity(physical: 300, mental: 4, date: DateComponents(year: 2020, month: 11, day: 15)),
    Activity(physical: 300, mental: 4, date: DateComponents(year: 2020, month: 11, day: 14)),
    Activity(physical: 300, mental: 4, date: DateComponents(year: 2020, month: 11, day: 13)),
    Activity(physical: 300, mental: 4, date: DateComponents(year: 2020, month: 11, day: 12)),
    Activity(physical: 300, mental: 4, date: DateComponents(year: 2020, month: 11, day: 11)),
    Activity(physical: 300, mental: 4, date: DateComponents(year: 2020, month: 11, day: 10))
]
