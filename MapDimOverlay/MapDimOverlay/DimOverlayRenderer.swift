//
//  DimOverlayRenderer.swift
//  MapDimOverlay
//
//  Created by Swapnil Luktuke on 4/2/17.
//
//

import Foundation
import MapKit
import CoreLocation

open class DimOverlayRenderer : MKOverlayRenderer {
    
    open var overlayColor : UIColor = .black
        
    public override init(overlay: MKOverlay) {
        super.init(overlay: overlay)
        alpha = 0.2
    }
    
    public init(overlay: MKOverlay, dimAlpha : CGFloat, color : UIColor) {
        super.init(overlay: overlay)
        alpha = dimAlpha
        overlayColor = color
    }
    
    open override func draw(_ mapRect: MKMapRect, zoomScale: MKZoomScale, in context: CGContext) {
        context.setFillColor(self.overlayColor.cgColor);
        context.fill(rect(for: MKMapRectWorld))
    }

}
