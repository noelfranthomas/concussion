//
//  ContentView.swift
//  Concussion
//
//  Created by Noel Thomas on 2020-10-27.
//

// User: noelfranthomas@gmail.com
// Pass: qwertyu


import SwiftUI
import CoreData

struct ContentView: View {
    
    @State var menu = false
    
    @AppStorage("status") var logged = false
    
    var body: some View{
        
        VStack{
            
            if logged{
                ZStack{
                    TabView {
                        
                        AboutView(showMenu: self.$menu, litCards: testDataAbout)
                            .tabItem {
                                Image(systemName: "info.circle")
                                Text("About")
                            }
                        
                        ManageView(showMenu: self.$menu, litCards: testDataManage)
                            .tabItem {
                                Image(systemName: "text.badge.checkmark")
                                Text("Manage")
                            }
                        
                        TrackView(showMenu: self.$menu)
                            .tabItem {
                                Image(systemName: "calendar")
                                Text("Track")
                            }
                    }.zIndex(1)
                    
                    Menu(showMenu: self.$menu).offset(x: self.menu ? 45 : 500).zIndex(2)
                    
                }
            }
            else{

                Login()
                    .navigationBarHidden(true)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext).preferredColorScheme(.dark)
    }
}
