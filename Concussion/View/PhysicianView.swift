//
//  PhysicianView.swift
//  Concussion
//
//  Created by Noel Thomas on 2020-11-25.
//

import SwiftUI

struct PhysicianView: View {
    var body: some View {
        VStack{
            List{
                Text("Physician Summary").font(.title).fontWeight(.heavy)
                
                VStack(alignment: .leading){
                    HStack{
                        Text("Red Flags").font(.title).fontWeight(.heavy)
                        Image(systemName: "exclamationmark.triangle.fill").font(.title3)
                    }.padding()
                    
                    Divider()
                    
                    VStack(alignment: .leading){
                        Text("1. Loss of vision").fontWeight(.bold)
                        Text("2. Slurred Speech").fontWeight(.bold)
                    }.font(.title2).padding()
                }
                .frame(minWidth: 0,
                       maxWidth: .infinity,
                       minHeight: 0,
                       maxHeight: .infinity,
                       alignment: .leading)
                .background(Color.red)
                .cornerRadius(15)
                
                ActivityView(title: "Activity").frame(width: 370, alignment: .center).padding(.bottom, 30)
                
                VStack(alignment: .leading){
                    Text("Persistent Symptoms").font(.title).fontWeight(.bold).padding()
                    
                    HStack{
                        VStack{
                            Image("head")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(minWidth: 0,
                                       maxWidth: 80,
                                       minHeight: 0,
                                       maxHeight: 80)
                                .clipped()
                                .cornerRadius(8)
                            Text("Headache")
                        }
                        
                        VStack{
                            Image("Nausea")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(minWidth: 0,
                                       maxWidth: 80,
                                       minHeight: 0,
                                       maxHeight: 80)
                                .clipped()
                                .cornerRadius(8)
                            Text("Nausea")
                        }
                    }.padding(.horizontal)
                    
                    Spacer()
                }
                .frame(minWidth: 0,
                       maxWidth: .infinity,
                       minHeight: 200,
                       maxHeight: .infinity,
                       alignment: .leading)
                .background(Color("cellColor"))
                .cornerRadius(15)
                 
                
                VStack(alignment: .leading){
                    Text("Questions").font(.title).fontWeight(.bold).padding()

                    
                    VStack(alignment: .leading){
                        Text("1. 'Do I ice my head when I get headaches?'")
                        Text("2. 'Can I still eat ice cream?'")
                    }.font(.title2).padding(.horizontal).padding(.bottom)
                }
                .frame(minWidth: 0,
                       maxWidth: .infinity,
                       minHeight: 0,
                       maxHeight: .infinity,
                       alignment: .leading)
                .background(Color("cellColor"))
                .cornerRadius(15)
            }
            .buttonStyle(PlainButtonStyle())
//            .navigationBarTitle("Physician Summary")

        }
    }
}

struct PhysicianView_Previews: PreviewProvider {
    static var previews: some View {
        PhysicianView().preferredColorScheme(.dark)
    }
}
