//
//  ViewController.swift
//  MapDimOverlayDemo
//
//  Created by Swapnil Luktuke on 4/2/17.
//
//

import UIKit
import MapKit
import MapDimOverlay

class ViewController: UIViewController, MKMapViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        addDimOverlay()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    func addDimOverlay() {
        let dimOverlay : DimOverlay = DimOverlay(mapView: mapView)
        mapView.add(dimOverlay)
    }
    
    
    // MARK: map view delegate
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        if overlay is DimOverlay {
            return DimOverlayRenderer(overlay: overlay)
//            return DimOverlayRenderer(overlay: overlay, dimAlpha: 0.3, color: .blue)
        }
        return MKOverlayRenderer(overlay: overlay)
    }
    
    
    // MARK: Outlets
    
    @IBOutlet weak var mapView: MKMapView!
}

