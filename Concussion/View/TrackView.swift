//
//  TrackView.swift
//  Concussion
//
//  Created by Noel Thomas on 2020-11-23.
//

import SwiftUI

struct TrackView: View {
    
    @Binding var showMenu : Bool
        
    @Namespace var ns
    @State private var selection: Lit? = nil
    
    var body: some View {
        ZStack {
            NavigationView {
              List {
                QuestionView(question: "Are you experiencing any headaches today?", image: "head").padding(.vertical, 16)
                
                ActivityView(title: "Physical Activity").frame(width: 370, alignment: .center).padding(.bottom, 30)
                
                HStack{
                    Spacer()
                    Text("Cognitive").fontWeight(.semibold).gradientForeground(colors: [Color.blue, Color.white]).padding(.horizontal)
                    Text("Physical").fontWeight(.semibold).gradientForeground(colors: [Color.red, Color.orange]).padding(.horizontal)
                }
                
                VStack{
                    Text("Persistent Symptoms")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color.gray)
                        .padding()
                    
                    HStack{
                        VStack{
                            Image("head")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(minWidth: 0,
                                       maxWidth: 50,
                                       minHeight: 0,
                                       maxHeight: 50,
                                       alignment: .center)
                                .clipped()
                                .cornerRadius(8)
                            
                            Text("Headache").font(.caption2).fontWeight(.bold)
                        }.padding(.horizontal)
                        
                        VStack{
                            Image("Nausea")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(minWidth: 0,
                                       maxWidth: 50,
                                       minHeight: 0,
                                       maxHeight: 50,
                                       alignment: .center)
                                .clipped()
                                .cornerRadius(8)
                            
                            Text("Nausea").font(.caption2).fontWeight(.bold)
                        }.padding(.horizontal)
                    }.padding(.bottom)
                }
                .frame(minWidth: 0,
                       maxWidth: .infinity,
                       minHeight: 0,
                       maxHeight: .infinity,
                       alignment: .center)
                .background(Color("cellColor"))
                .cornerRadius(15)
                .padding(.top, 50)
                
              }
              .buttonStyle(PlainButtonStyle())
              .navigationBarTitle("Track")
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

extension View {
    public func gradientForeground(colors: [Color]) -> some View {
        self.overlay(LinearGradient(gradient: .init(colors: colors),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing))
            .mask(self)
    }
}

