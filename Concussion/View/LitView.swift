//
//  LitView.swift
//  Concussion
//
//  Created by Noel Thomas on 2020-11-10.
//

import SwiftUI

struct LitView: View {
    
    let litCard: Lit
    
    var body: some View {
      ScrollView(.vertical) {
        VStack(alignment: .leading) {
          hero
          info
        }
      }
      .edgesIgnoringSafeArea(.all)
      .background(Color("bg")
                    .edgesIgnoringSafeArea(.all))
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
        Text(litCard.lit)
            .font(.body)
            .padding(.vertical, 3)
      }
      .padding()
      .foregroundColor(.white)
    }
}

struct LitView_Previews: PreviewProvider {
    static var previews: some View {
        LitView(litCard: testData[0])
    }
}
