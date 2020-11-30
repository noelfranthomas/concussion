//
//  Login.swift
//  Concussion
//
//  Created by Noel Thomas on 2020-11-02.
//
//  Inspired by KavSoft

import SwiftUI
import FirebaseAuth
import LocalAuthentication

struct Login : View {
    
    @StateObject var LoginModel = LoginViewModel()
    // when first time user logged in via email store this for future biometric login....
    @AppStorage("stored_User") var Stored_User = ""
    @AppStorage("stored_Password") var Stored_Password = ""
    
    @AppStorage("status") var logged = false
    
    @State var startAnimate = false
    
    var body: some View{
        
        ZStack{
            
            VStack{
                
                Spacer(minLength: 0)
                
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    //Dynamic Frame...
                    .padding(.horizontal,35)
                    .padding(.vertical)
                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 12, content: {
                        
                        Text("Login")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Text("Please sign in with your Connect Care creedentials to continue")
                            .foregroundColor(Color.white.opacity(0.5))
                    })
                    
                    Spacer(minLength: 0)
                }
                .padding()
                .padding(.leading,15)
                
                HStack{
                    
                    Image(systemName: "envelope")
                        .font(.title2)
                        .foregroundColor(.white)
                        .frame(width: 35)
                    
                    TextField("Email", text: $LoginModel.email)
                        .autocapitalization(.none)
                }
                .padding()
                .background(Color.white.opacity(LoginModel.email == "" ? 0 : 0.12))
                .cornerRadius(15)
                .padding(.horizontal)
                
                HStack{
                    
                    Image(systemName: "lock")
                        .font(.title2)
                        .foregroundColor(.white)
                        .frame(width: 35)
                    
                    SecureField("Password", text: $LoginModel.password)
                        .autocapitalization(.none)
                }
                .padding()
                .background(Color.white.opacity(LoginModel.password == "" ? 0 : 0.12))
                .cornerRadius(15)
                .padding(.horizontal)
                .padding(.top)
                
                HStack(spacing: 15){
                    
                    Button(action: LoginModel.verifyUser, label: {
                        Text("Login")
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                            .padding(.vertical)
                            .frame(width: UIScreen.main.bounds.width - 150)
                            .background(Color.white)
                            .clipShape(Capsule())
                    })
                    .opacity(LoginModel.email != "" && LoginModel.password != "" ? 1 : 0.5)
                    .disabled(LoginModel.email != "" && LoginModel.password != "" ? false : true)
                    .alert(isPresented: $LoginModel.alert, content: {
                        Alert(title: Text("Error"), message: Text(LoginModel.alertMsg), dismissButton: .destructive(Text("Ok")))
                    })
                    
                    if LoginModel.getBioMetricStatus(){
                        
                        Button(action: LoginModel.authenticateUser, label: {
                            
                            // getting biometrictype...
                            Image(systemName: LAContext().biometryType == .faceID ? "faceid" : "touchid")
                                .font(.title)
                                .foregroundColor(.black)
                                .padding()
                                .background(Color.white)
                                .clipShape(Circle())
                        })
                    }
                }
                .padding(.top)
                
                // Forget Button...
                
                Button(action: {}, label: {
                    Text("Forget password?")
                        .foregroundColor(Color("green"))
                })
                .padding(.top,8)
                .alert(isPresented: $LoginModel.store_Info, content: {
                    Alert(title: Text("Message"), message: Text("Store Information For Future Login Using BioMetric Authentication ???"), primaryButton: .default(Text("Accept"), action: {
                        
                        // storing Info For BioMetric...
                        Stored_User = LoginModel.email
                        Stored_Password = LoginModel.password
                        
                        withAnimation{self.logged = true}
                        
                    }), secondaryButton: .cancel({
                        // redirecting to Home
                        withAnimation{self.logged = true}
                    }))
                })
                
                // SignUp...
                
                Spacer(minLength: 0)
                
                HStack(spacing: 5){
                    
                    Text("Don't have an account? ")
                        .foregroundColor(Color.white.opacity(0.6))
                    
                    Button(action: {}, label: {
                        Text("Signup")
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white)
                    })
                }
                .padding(.vertical)
            }
            .background(Color("bg").ignoresSafeArea(.all, edges: .all))
            .animation(startAnimate ? .easeOut : .none)
        }
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.startAnimate.toggle()
            }
        })
    }
}

// Loading Screen

import SwiftUI

struct Loading_Screen: View {
    @State var animate = false
    var body: some View {
        
        ZStack{
            
            Color.black.opacity(0.3)
                .ignoresSafeArea(.all, edges: .all)
            
            Circle()
                .trim(from: 0, to: 0.8)
                .stroke(Color("green"),lineWidth: 10)
                .frame(width: 60, height: 60)
                .rotationEffect(.init(degrees: animate ? 360 : 0))
                .padding(40)
                .background(Color.white)
                .cornerRadius(15)
        }
        .onAppear(perform: {
            withAnimation(Animation.linear.speed(0.6).repeatForever(autoreverses: false)){
                animate.toggle()
            }
        })
    }
}

