//
//  ActivityView.swift
//  Concussion
//
//  Created by Noel Thomas on 2020-11-15.
//

import SwiftUI
import SwiftUICharts

struct ActivityView: View {
    
    let title : String
    
    let chartStyle = ChartStyle(backgroundColor: Color("cellColor"), accentColor: Color.yellow, secondGradientColor: Color.red, textColor: Color.white, legendTextColor: Color.white, dropShadowColor: Color.black )


    
    var body: some View {
        MultiLineChartView(data: [([8,32,100,5,100,28,30], GradientColors.orange), ([20,50,10,80,70,60,77,50], GradientColors.blue)], title: "Activity", form: ChartForm.large)
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView(title: "TestTitle").preferredColorScheme(.dark)
    }
}
