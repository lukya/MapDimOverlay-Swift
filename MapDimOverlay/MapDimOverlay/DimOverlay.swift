//
//  DimOverlay.swift
//  MapDimOverlay
//
//  Created by Swapnil Luktuke on 4/2/17.
//
//

import Foundation
import MapKit
import CoreLocation

open class DimOverlay : NSObject, MKOverlay {
    var dimOverlayCoordinates : CLLocationCoordinate2D = kCLLocationCoordinate2DInvalid
    var _mapView : MKMapView?
    
    public init(mapView : MKMapView) {
        dimOverlayCoordinates = mapView.centerCoordinate
    }
    
    open var coordinate: CLLocationCoordinate2D {
        return dimOverlayCoordinates
    }
    
    open var boundingMapRect: MKMapRect {
        return MKMapRectWorld
    }
}
