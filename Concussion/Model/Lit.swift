//
//  Lit.swift
//  Concussion
//
//  Created by Noel Thomas on 2020-11-10.
//

import Foundation
import MapKit
import CardStack

struct Lit: Codable, Identifiable, CardData {
    var name : String
    var desc : String
    var lit : String
    var image : String
    var id = UUID().uuidString
}

let lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

let shortlorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

let appointment = "Appointment tomorrow with Dr. Appleseed."

let region = MKCoordinateRegion(
    center: CLLocationCoordinate2D(
        latitude: 51.065307,
        longitude: -114.133691
    ),
    span: MKCoordinateSpan(
        latitudeDelta: 0.03,
        longitudeDelta: 0.03
    )
)

let testData = [
    Lit(name: "What's a Concussion?", desc: "Want to know a little more about what's happening?",  lit: lorem, image: "What's a Concussion?"),
    Lit(name: "Initial Management", desc: "Here's a bit on how to take care of yourself for the first 24hrs.",  lit: lorem, image: "Initial Management"),
    Lit(name: "Persistent Symptoms", desc: "Here's a bit on how to take care of yourself for the first 24hrs.",  lit: lorem, image: "Persistent Symptoms")
]

let testData2 = [
    Lit(name: "Management Tips", desc: "Want to know a little more about what's happening?",  lit: lorem, image: "Management Tips"),
    Lit(name: "Dos and Don'ts", desc: "Here's a bit on how to take care of yourself for the first 24hrs.",  lit: lorem, image: "Dos and Don'ts")
]

