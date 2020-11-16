//
//  MapView.swift
//  Concussion
//
//  Created by Noel Thomas on 2020-11-15.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State var region : MKCoordinateRegion

    var body: some View {
        Map(coordinateRegion: $region, interactionModes: MapInteractionModes.pan)
            .frame(height: 200).cornerRadius(16)
        //MapPin(coordinate: region.center)???
    }
}
