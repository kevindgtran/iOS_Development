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
        
        //new instance of MKMapView
        mapView = MKMapView()

        //set view to instance of MKMapView
        view = mapView
        
        //new instance of UISegmentedControl
        let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        
        //UISegmentedControl background color, alpha
        segmentedControl.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        
        //UISegmentedControl default selection
        segmentedControl.selectedSegmentIndex = 0
        
        //UISegmentedControl constraints to flase, so we can setup constaints manually
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        
        //add UISegmentedControl to view
        view.addSubview(segmentedControl)

    }
    
    
    
    
    override func viewDidLoad() {
        print("MapViewController loaded its view")
    }//end of viewDidLoad
    
    
    
    
}//end of MapViewController
