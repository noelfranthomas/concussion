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
                    
//                    Button(action: {}, label: {
//                        Text("Show in Maps")
//                            .fontWeight(.heavy)
//                            .foregroundColor(.white)
//                            .padding(.vertical)
//                            .frame(width: UIScreen.main.bounds.width - 100)
//                            .background(Color("cellColor"))
//                            .cornerRadius(16)
//                    })
                    
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
