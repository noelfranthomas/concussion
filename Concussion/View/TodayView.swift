//
//  TodayView.swift
//  Concussion
//
//  Created by Noel Thomas on 2020-11-15.
//

import SwiftUI

struct TodayView: View {
    
    @Binding var showMenu : Bool
    
    private let columns = [
        GridItem(.adaptive(minimum: 200))
      ]
    
    var body: some View {
        ZStack {
            NavigationView {
              List {
                  LazyVGrid(columns: columns, spacing: 20) {
                                        
                    AppointmentView(app: appointment, region: region)
                    
                    //MARK: Add Components Here
                    
                  }
                  .buttonStyle(PlainButtonStyle())
              }
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
        }
    }
}
