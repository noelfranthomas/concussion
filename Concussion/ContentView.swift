//
//  ContentView.swift
//  Concussion
//
//  Created by Noel Thomas on 2020-10-27.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State var menu = false
    
    var body: some View{
        ZStack{
            TabView {
                VStack{
                    TodayView(showMenu: self.$menu, litCards: testData2)
                }
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Today")
                }
                
                GlanceView(showMenu: self.$menu, litCards: testData)
                    .tabItem {
                        Image(systemName: "eyeglasses")
                        Text("Glance")
                    }
            }.zIndex(1)
            
            Menu(showMenu: self.$menu).offset(x: self.menu ? 45 : 500).zIndex(2)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext).preferredColorScheme(.dark)
    }
}
