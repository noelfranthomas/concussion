//
//  QuestionView.swift
//  Concussion
//
//  Created by Noel Thomas on 2020-11-18.
//

import SwiftUI

struct QuestionView: View {
    
    var question : String
    var image : String
    
    var body: some View {
        VStack{
            Text(question)
                .font(.title)
                .fontWeight(.bold)
                .padding()
            
            Image("head")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0,
                       maxWidth: 300,
                       minHeight: 0,
                       maxHeight: 300,
                       alignment: .center)
                .clipped()
                .cornerRadius(8.0)
            
            HStack{
                Button(action:{}, label:{
                    Text("Yes")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                        .frame(width: 120)
                        .background(Color("primary"))
                        .cornerRadius(8)
                })
                
                Spacer()
                
                Button(action:{}, label:{
                    Text("No")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                        .frame(width: 120)
                        .background(Color("primary"))
                        .cornerRadius(8)
                })
            }
            .padding()
            .padding(.horizontal, 50)
            
            

        }
        .foregroundColor(.white)
        .background(Color("cellColor"))
        .cornerRadius(15)
        
        
    }
}
