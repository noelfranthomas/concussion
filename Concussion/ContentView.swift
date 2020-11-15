//
//  ContentView.swift
//  Concussion
//
//  Created by Noel Thomas on 2020-10-27.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    
    
    var body: some View{
        MenuHolder()
    }
}

struct MenuHolder : View {
    @State var showMenu = false
    
    let menuWidth = UIScreen.main.bounds.width / 1.5
    
    var body: some View{
        ZStack(){
            
            VStack{
                Button(action: {
                    withAnimation(.default){
                        self.showMenu.toggle()
                    }
                }, label: {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                })
                GlanceView(litCards: testData)
            }.zIndex(1).blur(radius: self.showMenu ? 10 : 0 )
            
            Menu(showMenu: self.$showMenu).offset(x: self.showMenu ? 45 : 500).zIndex(2)
        }
    }
}

struct Menu : View {
    
    @Binding var showMenu : Bool
    
    let menuWidth = UIScreen.main.bounds.width / 1.5
    
    var body: some View{
        VStack{
            
            HStack{
                Text("Menu").font(.title).fontWeight(.heavy)
                
                Spacer()
                
                Button(action: {
                    withAnimation(.default){
                        self.showMenu.toggle()
                    }
                }, label: {
                    Image(systemName: "arrow.down.right.and.arrow.up.left").resizable().frame(width: 20, height: 20).foregroundColor(.white)
                })
            }.padding(.top, 40).padding(.bottom)
            
            Button(action: {}, label: {
                HStack{
                    Text("Find Clinics").font(.title2)
                    Image(systemName: "magnifyingglass").font(.title2)
                }.frame(width: menuWidth, height: 40).foregroundColor(.white).background(Color("cellColor").opacity(0.5)).cornerRadius(8)
            }).padding(2)
            
            Button(action: {}, label: {
                HStack{
                    Text("Web Resources").font(.title2)
                    Image(systemName: "link").font(.title2)
                }.frame(width: menuWidth, height: 40).foregroundColor(.white).background(Color("cellColor").opacity(0.5)).cornerRadius(8)
            }).padding(2)
            
            Button(action: {}, label: {
                HStack{
                    Text("Summary").font(.title2)
                    Image(systemName: "doc.text").font(.title2)
                }.frame(width: menuWidth, height: 40).foregroundColor(.white).background(Color("cellColor").opacity(0.5)).cornerRadius(8)
            }).padding(2)
            
            Spacer()
            
            Divider()
            
            VStack{
                Button(action: {}, label: {
                    HStack{
                        Text("Account")
                        Image(systemName: "person.circle")
                    }
                })
                
                Button(action: {}, label: {
                    HStack{
                        Text("Support")
                        Image(systemName: "gear")
                    }
                })
                
                Button(action: {}, label: {
                    HStack{
                        Text("Terms of Service")
                    }
                })
            }.padding()
            
            
        }.frame(width: menuWidth).padding(.horizontal, 20).background(Color.black.opacity(0.7)).shadow(radius: 20) .edgesIgnoringSafeArea(.all)
    }
}
    
    
    
//    @Environment(\.managedObjectContext) private var viewContext
//
//    @FetchRequest(
//        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
//        animation: .default)
//    private var items: FetchedResults<Item>
//
//    var body: some View {
//        List {
//            ForEach(items) { item in
//                Text("Item at \(item.timestamp!, formatter: itemFormatter)")
//            }
//            .onDelete(perform: deleteItems)
//        }
//        .toolbar {
//            #if os(iOS)
//            EditButton()
//            #endif
//
//            Button(action: addItem) {
//                Label("Add Item", systemImage: "plus")
//            }
//        }
//    }
//
//    private func addItem() {
//        withAnimation {
//            let newItem = Item(context: viewContext)
//            newItem.timestamp = Date()
//
//            do {
//                try viewContext.save()
//            } catch {
//                // Replace this implementation with code to handle the error appropriately.
//                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//                let nsError = error as NSError
//                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//            }
//        }
//    }
//
//    private func deleteItems(offsets: IndexSet) {
//        withAnimation {
//            offsets.map { items[$0] }.forEach(viewContext.delete)
//
//            do {
//                try viewContext.save()
//            } catch {
//                // Replace this implementation with code to handle the error appropriately.
//                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//                let nsError = error as NSError
//                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//            }
//        }
//    }
//}
//
//private let itemFormatter: DateFormatter = {
//    let formatter = DateFormatter()
//    formatter.dateStyle = .short
//    formatter.timeStyle = .medium
//    return formatter
//}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext).preferredColorScheme(.dark)
    }
}
