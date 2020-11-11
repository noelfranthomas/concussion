//
//  GlanceView.swift
//  Concussion
//
//  Created by Noel Thomas on 2020-11-10.
//

import SwiftUI

struct GlanceView: View {
    
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
                  LazyVGrid(columns: columns, spacing: 20) {
                      
                    AppointmentView(app: appointment)
                    
                    ForEach(litCards) { litCard in
                        if (litCard.id != selection?.id) {
                          LitCardView(litCard: litCard)
                            .frame(height: 400)
                            .onTapGesture { select(litCard) }
                            .matchedGeometryEffect(id: litCard.id, in: ns)
                        }
                        else {
                          LitCardView(litCard: litCard)
                            .opacity(0)
                        }
                    }
                  }
                  .buttonStyle(PlainButtonStyle())
              }
              .navigationBarTitle("At a Glance")
            }
            .zIndex(1)
            
            if let selection = selection {
              LitView(litCard: selection)
                .onTapGesture { select(nil) }
                .matchedGeometryEffect(id: selection.id, in: ns)
                .zIndex(2)
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
