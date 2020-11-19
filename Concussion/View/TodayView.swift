//
//  TodayView.swift
//  Concussion
//
//  Created by Noel Thomas on 2020-11-15.
//

import SwiftUI

struct TodayView: View {
    
    @Binding var showMenu : Bool
    
    let litCards: [Lit]
    
    @Namespace var ns
    @State private var selection: Lit? = nil
    
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
                                
                QuestionView(question: "Are you experiencing any headaches today?", image: "head").padding(.vertical, 16)
                                
                ActivityView().frame(width: 350, height: 150, alignment: .center).padding(.bottom, 200)
                
                VStack{
                    Text("Our Suggestions").font(.title).fontWeight(.bold)
                    
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 200))], spacing: 20) {

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
                }.padding(.vertical, 16).multilineTextAlignment(.leading)
                
              }
              .buttonStyle(PlainButtonStyle())
              .navigationBarTitle("Today")
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
    }
    
    func select(_ litCard: Lit?) {
      withAnimation(.interactiveSpring()) {
        selection = litCard
      }
    }
}


