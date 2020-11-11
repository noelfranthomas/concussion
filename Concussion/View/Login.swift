//
//  Login.swift
//  Concussion
//
//  Created by Noel Thomas on 2020-11-02.
//

import SwiftUI
import LocalAuthentication

struct Login : View {
    
    @StateObject var LoginModel = LoginViewModel()
    
    @AppStorage("stored_User") var Stored_User = ""
    @AppStorage("stored_Password") var Stored_Password = ""
    
    @AppStorage("logged") var logged = false
    
    var body : some View {
        
        VStack{
            
            Spacer(minLength: 0)
            
            Image("concussionLogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                // DYNAMIC FRAME :)
                .padding(.horizontal, 35)
                .padding(.vertical)
            
            HStack{
                VStack(alignment: .leading, spacing: 12, content: {
                    Text("Login")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text("Sign in to continue")
                        .foregroundColor(Color.white.opacity(0.5))
                })
                
                Spacer(minLength: 0)
                    
            }
            .padding()
            .padding(.leading, 15)
            
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
            .animation(.easeInOut)
            
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
            .animation(.easeInOut)
            
            HStack(spacing: 15){
                Button(action: LoginModel.verifyuser, label: {
                    Text("Login")
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 150)
                        .background(Color("primary"))
                        .clipShape(Capsule())
                })
                .opacity(LoginModel.email != "" && LoginModel.password != "" ? 1 : 0.2)
                .disabled(LoginModel.email == "" && LoginModel.password == "" ? false : true)
                .alert(isPresented: $LoginModel.alert, content: {
                        Alert(title: Text("Error"), message: Text(LoginModel.alertMsg), dismissButton: .destructive(Text("Ok")))
                })
                
                if LoginModel.getBioMetricStatus(){
                    
                    Button(action: LoginModel.authenticateUser, label: {
                        Image(systemName: LAContext().biometryType == .faceID ? "faceid" : "touchid")
                            .font(.title)
                            .foregroundColor(.black)
                            .padding()
                            .background(Color("primary"))
                            .clipShape(Circle())
                    })
                }
            }
            .padding(.top)
            
            //Forgot
            
            Button(action: {}, label: {
                Text("Forgot your password?")
                    .foregroundColor(Color("primary"))
            })
            .padding(.top, 8)
            .alert(isPresented: $LoginModel.store_info, content: {
                Alert(title: Text("Message"), message: Text("Would you like store this information for next time?"), primaryButton: .default(Text("Accpet"), action: {
                    //store info (so we can use biometric next time)
                    
                    Stored_User = LoginModel.email
                    Stored_Password = LoginModel.password
                    
                    withAnimation{self.logged = true}
                    
                }), secondaryButton: .cancel({
                    //Take me home
                    
                    withAnimation{self.logged = true}
                    
                }))
            })
            
            
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            
            HStack(spacing: 6){
                Text("Don't have an account?")
                    .foregroundColor(Color.white.opacity(0.6))
                
                Button(action: {}, label: {
                    Text("Sign up")
                        .fontWeight(.heavy)
                        .foregroundColor(Color("primary"))
                })
            }
            .padding(.vertical)
        
        }
        
        .background(Color("bg").ignoresSafeArea(.all, edges: .all))
        .animation(.easeOut)
        
    }
    

}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
            .preferredColorScheme(.dark)
    }
}
