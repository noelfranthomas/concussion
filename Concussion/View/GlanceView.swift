//
//  GlanceView.swift
//  Concussion
//
//  Created by Noel Thomas on 2020-11-10.
//

import SwiftUI
import CardStack

struct GlanceView: View {
    
    
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
                        
                        VStack{
                            Text("Returning to").font(.title).fontWeight(.bold)
    
                            StackView()
                        }.padding(20)
                                                
                        Text("Literature").font(.title).fontWeight(.heavy)
                        
                        LazyVGrid(columns: columns, spacing: 20) {
  
                          ForEach(litCards) { litCard in
                              
                              if (litCard.id != selection?.id) {
                                LitCardView(litcard: litCard)
                                  .frame(height: 400)
                                  .onTapGesture { select(litCard) }
                                  .matchedGeometryEffect(id: litCard.id, in: ns)
                              }
                              else {
                                LitCardView(litcard: litCard)
                                  .opacity(0)
                              }
                          }
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                    .navigationBarTitle("At a Glance")
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


