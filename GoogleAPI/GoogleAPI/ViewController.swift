//
//  ViewController.swift
//  GoogleAPI
//
//  Created by Kevin Tran on 3/7/17.
//  Copyright © 2017 Kevin Tran. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {
    
    // You don't need to modify the default init(nibName:bundle:) method.
    
    override func loadView() {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: 37.773972, longitude: -122.431297, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 37.773972, longitude: -122.431297)
        marker.title = "San Francisco"
        marker.snippet = "California"
        marker.map = mapView
    }
}

