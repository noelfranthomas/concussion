//
//  Menu.swift
//  Concussion
//
//  Created by Noel Thomas on 2020-11-14.
//

import SwiftUI

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
                    Text("Need more advice?").font(.title2)
                    Image(systemName: "link").font(.title2)
                }.frame(width: menuWidth, height: 40).foregroundColor(.white).background(Color("cellColor").opacity(0.5)).cornerRadius(8)
            }).padding(2)
            
            Button(action: {}, label: {
                HStack{
                    Text("Physician Summary").font(.title2)
                    Image(systemName: "doc.text").font(.title2)
                }.frame(width: menuWidth, height: 40).foregroundColor(.white).background(Color("cellColor").opacity(0.5)).cornerRadius(8)
            }).padding(2)
            
            Button(action: {}, label: {
                HStack{
                    Text("References").font(.title2)
                    Image(systemName: "doc.append").font(.title2)
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
