//
//  ManageView.swift
//  Concussion
//
//  Created by Noel Thomas on 2020-11-23.
//

import SwiftUI

import SwiftUI
import CardStack

struct ManageView: View {
    
    
    @Binding var showMenu : Bool
    
    let litCards: [Lit]
    
    @Namespace var ns
    @State private var selection: Lit? = nil
    
    private let columns = [
        GridItem(.adaptive(minimum: 200))
      ]
    
    var body: some View {
        ZStack {
            NavigationView {
                    List {
                        
                        AppointmentView(app: appointment, region: region)
                        
                        HStack{
                            Text("NOTE:").fontWeight(.heavy)
                            
                            Spacer()
                            
                            Text("Remember to take your vestibular suppressants.")

                        }.font(.title3).padding(25)
                        
                        FollowView().frame(height: 410)
                        
                        VStack{
                            Text("Returning to").font(.title).fontWeight(.bold)
                            
                            StackView()
                        }.padding(20)
                    }
                    .buttonStyle(PlainButtonStyle())
                    .navigationBarTitle("Manage")
                    .toolbar(content: {
                      ToolbarItem {
                          Button(action: {
                              withAnimation(.default){
                                  self.showMenu.toggle()
                              }
                          }, label: {
                          Image(systemName: "equal.square")
                        })
                      }
                    })
            }
            .zIndex(1).blur(radius: self.showMenu ? 10 : 0 )
            
            if let selection = selection {
              LitView(litCard: selection)
                .onTapGesture { select(nil) }
                .matchedGeometryEffect(id: selection.id, in: ns)
                .zIndex(2).blur(radius: self.showMenu ? 10 : 0 )
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    func select(_ litCard: Lit?) {
      withAnimation(.interactiveSpring()) {
        selection = litCard
      }
    }
}

