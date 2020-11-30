//
//  FollowView.swift
//  Concussion
//
//  Created by Noel Thomas on 2020-11-23.
//

import SwiftUI

struct FollowView: View {
    var body: some View {
      VStack(alignment: .leading) {
        Text("Follow Up")
            .font(.title)
            .fontWeight(.bold)
            .padding(.horizontal)
            .padding(.top)
        Text("Persistent Symptoms")
            .font(.subheadline)
            .fontWeight(.bold)
            .foregroundColor(Color.gray)
            .padding(.horizontal)
        
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
        }
        .padding()
        
        Text("Questions for the Care Provider")
            .font(.subheadline)
            .fontWeight(.bold)
            .foregroundColor(Color.gray)
            .padding(.horizontal)
        
        VStack{
            VStack(alignment: .leading){
                HStack{
                    Text("Write questions for your care provider here...").padding()
                    Spacer()
                }
                Spacer()
            }.frame(width: 340, height: 100).background(Color("dark")).cornerRadius(8)
        }.padding()
        
        NavigationLink(
                destination: PhysicianView(),
                label: {
                    Text("Physician Summary").fontWeight(.bold).frame(width: 340, height: 40).background(Color("primary")).cornerRadius(8).padding(.horizontal).foregroundColor(.white)
                })
      }
      .frame(minWidth: 0,
             maxWidth: .infinity,
             minHeight: 0,
             maxHeight: .infinity,
             alignment: .topLeading)
      .background(Color("cellColor"))
      .cornerRadius(15)
    }
}

struct FollowView_Previews: PreviewProvider {
    static var previews: some View {
        FollowView().preferredColorScheme(.dark)
    }
}
