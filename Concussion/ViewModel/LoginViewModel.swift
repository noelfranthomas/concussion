//
//  LoginViewModel.swift
//  Concussion
//
//  Created by Noel Thomas on 2020-11-02.
//

import SwiftUI
import LocalAuthentication
import Firebase

class LoginViewModel : ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    //For alerts..
    
    @Published var alert = false
    @Published var alertMsg = ""
    
    
    //User data
    
    @AppStorage("stored_User") var Stored_User = ""
    @AppStorage("stored_Password") var Stored_Password = ""
    
    @AppStorage("logged") var logged = false
    
    @Published var store_info = false
    
    
    //Getting biometric data
    
    func getBioMetricStatus()->Bool{
        let scanner = LAContext()
        if email == Stored_User && scanner.canEvaluatePolicy(.deviceOwnerAuthentication, error: .none){
            
            return true
        }
        
        return false
        
    }
    
    //User auth
    
    func authenticateUser(){
        let scanner = LAContext()
        
        scanner.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Unlock \(email)") { (status, err) in
            if err != nil{
                print(err!.localizedDescription)
                return
            }
        }
    }
    
    //Verify
    
    func verifyuser(){
        Auth.auth().signIn(withEmail: email, password: password){ (res, err) in
            if let error = err {
                self.alertMsg = error.localizedDescription
                self.alert.toggle()
                return
                
            }
            
            // Success
            
            print("successful verification")
            
            //Asking user to save data or not
            
            if(self.Stored_User == "" || self.Stored_Password == ""){
                self.store_info.toggle()
                return
            }
            
            //Else go home
            
            withAnimation{self.logged = true}
            
        }
    }
}
