//
//  TransportView.swift
//  weddingapp
//
//  Created by Nate Schaffner on 6/15/22.
//

import SwiftUI
import MapKit

struct TransportView: View {
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.334_900,
                                       longitude: -122.009_020),
        latitudinalMeters: 750,
        longitudinalMeters: 750
    )
    
    @State private var hotelRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.270942, longitude: -74.507125), latitudinalMeters: 750, longitudinalMeters: 750)
    
    var body: some View {
        VStack{
            Text("Where to Go")
            //MKMapView()
            Map(coordinateRegion: $hotelRegion)
        }
    }
}

struct TransportView_Previews: PreviewProvider {
    static var previews: some View {
        TransportView()
    }
}
