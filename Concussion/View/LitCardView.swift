//  LitCardView.swift
//  Concussion
//
//  Created by Noel Thomas on 2020-11-09.
//

import SwiftUI

struct LitCardView: View {
   
    let litCard: Lit
    
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
        Image(litCard.image)
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
        Text(litCard.name)
            .font(.title)
            .fontWeight(.bold)
        Text(litCard.desc)
            .font(.subheadline)
            .fontWeight(.bold)
            .foregroundColor(Color("primary"))
        Text(litCard.lit.prefix(200) + "...")
          .font(.body)
            .padding(.vertical, 3)
      }
      .padding()
      .foregroundColor(.white)
    }
}
