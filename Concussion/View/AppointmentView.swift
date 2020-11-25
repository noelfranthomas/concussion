//
//  AppointmentView.swift
//  Concussion
//
//  Created by Noel Thomas on 2020-11-10.
//

import SwiftUI
import MapKit

struct AppointmentView: View {
    
    var app : String
    
    var region : MKCoordinateRegion
    
    var body: some View {
        
        VStack{
            
            if app != "" {
                VStack{
                    Text(app)
                        .fontWeight(.heavy)
                        .font(.title2)
                        .padding(.bottom)
                    
                    MapView(region: region)
                }
                .padding(.bottom)
            }
            
            if app == "" {
                Text("No upcoming appointments")
            }
        }
    }
}
