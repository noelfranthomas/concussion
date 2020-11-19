//
//  ActivityView.swift
//  Concussion
//
//  Created by Noel Thomas on 2020-11-15.
//

import SwiftUI
import SwiftUICharts

struct ActivityView: View {
    
    let chartStyle = ChartStyle(backgroundColor: Color("cellColor"), accentColor: Color.yellow, secondGradientColor: Color.red, textColor: Color.white, legendTextColor: Color.white, dropShadowColor: Color.black )


    
    var body: some View {
        
        VStack{
            LineView(data: [8,23,54,32,12,37,7,23,43], title: "Activity", style: chartStyle)
        }
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView().preferredColorScheme(.dark)
    }
}
