//
//  Lit.swift
//  Concussion
//
//  Created by Noel Thomas on 2020-11-10.
//

import Foundation

struct Lit: Codable, Identifiable {
    var name : String
    var desc : String
    var lit : String
    var image : String
    var id = UUID().uuidString
}

let lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

let appointment = ""

let testData = [
    Lit(name: "Next Steps", desc: "Based on your condition, here are the steps we reccommend for a fast recovery:",  lit: lorem, image: "image2"),
    Lit(name: "What's a Concussion?", desc: "Want to know a little more about what's happening?",  lit: lorem, image: "image1")
]
