//
//  ConcussionApp.swift
//  Concussion
//
//  Created by Noel Thomas on 2020-10-27.
//

import SwiftUI
import Firebase

@main
struct ConcussionApp: App {
    
    @UIApplicationDelegateAdaptor(Delegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}


//Init Firebase

class Delegate : NSObject, UIApplicationDelegate{
    
    func application (_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
                
        return true
    }
}
