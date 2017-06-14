//
//  MapViewController.swift
//  WorldTrotter
//
//  Created by Kevin Tran on 6/13/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit
import MapKit //import the MapKit library programmatically

class MapViewController: UIViewController {
    
    //create a reference for MKMapView
    //MARK: - Properties
    var mapView: MKMapView!
    

    //override loadView() to create a new MKMapView - creating the view programmatically, set the MKMapView reference as the view
    override func loadView() {
        mapView = MKMapView()

        view = mapView
    }
    
    
    
    
    override func viewDidLoad() {
        print("MapViewController loaded its view")
    }//end of viewDidLoad
    
    
    
    
}//end of MapViewController
