//  LitCardView.swift
//  Concussion
//
//  Created by Noel Thomas on 2020-11-09.
//

import SwiftUI

struct LitCardView: View {
    
    let litcard : Lit
    
    var body: some View {
        VStack {
        hero
        info
        }
        .background(Color("cellColor"))
        .frame(minWidth: 0,
               maxWidth: .infinity,
               minHeight: 0,
               maxHeight: .infinity,
               alignment: .center)
        .cornerRadius(15)
    }
    
    @ViewBuilder var hero: some View {
        Image(litcard.image)
          .resizable()
          .aspectRatio(contentMode: .fill)
          .frame(minWidth: 0,
                 maxWidth: .infinity,
                 minHeight: 0,
                 maxHeight: .infinity,
                 alignment: .center)
          .clipped()
    }
    
    @ViewBuilder var info: some View {
      VStack(alignment: .leading) {
        Text(litcard.name)
            .font(.title)
            .fontWeight(.bold)
        Text(litcard.desc)
            .font(.subheadline)
            .fontWeight(.bold)
            .foregroundColor(Color.gray)
        Text(litcard.lit)
            .font(.body)
            .padding(.vertical, 3)
      }
      .padding()
      .foregroundColor(.white)
    }
}
