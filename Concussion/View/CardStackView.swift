//
//  CardStackView.swift
//  Concussion
//
//  Created by Noel Thomas on 2020-11-18.
//

import SwiftUI
import CardStack


struct DataExample: CardData {
    var id: String
    var color: Color
    var type: String
    var lit : String
}

struct returnCardView: CardView {
    var data: DataExample?
    
    init<Data>(data: Data) where Data: CardData {
        if let infoData = data as? DataExample {
            self.data = infoData
        }
    }
    
    var body: some View {
        
        VStack{
            
            Text(data!.type).fontWeight(.heavy).font(.title3).frame(width: 350, height: 50).background(Color("cellColor")).cornerRadius(8).shadow(color: Color.black.opacity(0.1), radius: 3, x: 0, y: 0)
            
            Text(data!.lit).font(.body).padding().frame(width: 350, height: 400).background(Color("cellColor")).cornerRadius(8).shadow(color: Color.black.opacity(0.1), radius: 3, x: 0, y: 0)
                
            
            data?.color
                .frame(width: 300, height: 25)
                .shadow(color: Color.black.opacity(0.1), radius: 3, x: 0, y: 0)
                .cornerRadius(8)
        }
        
        
    }
}

struct StackView: View {
    let items: [DataExample] = [
        DataExample(id: UUID().uuidString, color: .red, type: "Daily Activities", lit: da),
                 DataExample(id: UUID().uuidString, color: .blue, type: "Work/School", lit: ws),
                 DataExample(id: UUID().uuidString, color: .yellow, type: "Sport", lit: sp),
    ]
    
    let configuration = StackConfiguration()
    
    var body: some View {
        CardStackView<returnCardView, DataExample>(configuration: nil, items: items)
    }
}

struct StackExampleView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}
