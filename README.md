# MapDimOverlay-Swift

[![Build Status](https://travis-ci.org/lukya/MapDimOverlay-Swift.svg?branch=master)](https://travis-ci.org/lukya/MapDimOverlay-Swift)
[![License](https://img.shields.io/badge/license-unlicense-green.svg)](/LICENSE)
[![Twitter: @swapnilluktuke](https://img.shields.io/badge/Contact-@swapnilluktuke-blue.svg)](https://twitter.com/swapnilluktuke)

Simple dim overlay on iOS MapView, covering entire map using MKOverlay and MKOverlayRenderer with customizable color and alpha values.

## Usage

Initialize and add `MapDimOverlay` to your `MKMapView` object.
```swift
    func addDimOverlay() {
        let dimOverlay : DimOverlay = DimOverlay(mapView: mapView)
        mapView.add(dimOverlay)
    }
```
In the map view's delegate's `mapView: rendererFor overlay:` method, instantiate and return `MapDimOverlayRenderer`. 
You can customize overlay color and opacity.
```swift
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        if overlay is DimOverlay {
            return DimOverlayRenderer(overlay: overlay, dimAlpha: 0.3, color: .blue)
        }
        return MKOverlayRenderer(overlay: overlay)
    }
```
## Adding MapDimOverlay to your project

### Source files

You can directly add the `MapDimOverlay.swift`, and `MKMapDimOverlayRenderer.swift` files to your project.

1. Download the [latest code version](https://github.com/lukya/MapDimOverlay-Swift/archive/master.zip) or add the repository as a git submodule to your git-tracked project. 
2. Open your project in Xcode, then drag and drop `MapDimOverlay.swift`, and `MKMapDimOverlayRenderer.swift` onto your project (use the "Project Navigator view"). Make sure to select Copy items when asked if you extracted the code archive outside of your project. 

## Screenshots
### No Overlay
![No Overlay](/Screenshots/Normal-WithoutOverlay.png)

### Default Overlay (Color : Black | Opacity 0.2)
![Default Overlay (Color : Black | Opacity 0.2)](/Screenshots/DefaultOverlay.png)

### Custom Overlay (Color : Cyan | Opacity 0.3)
![Custom Overlay (Color : Blue | Opacity 0.3)](/Screenshots/CustomOverlay.png)

## License

This code is distributed under the [Unlicense](LICENSE). 
