//
//  MapView.swift
//  Taza Aua
//
//  Created by Beket Muratbek on 17.12.2021.
//

import SwiftUI
import MapKit
import CoreLocation

struct MapView: View {
        /*func getUserLocation(){
            let manager = CLLocationManager()
            manager.requestLocation()
//            let managerDelegate = CLLocationManagerDelegate(self)
            manager.delegate = self
        }*/
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 43.249_958, longitude: 76.921_152),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    var body: some View {
        Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .constant(.follow))
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
