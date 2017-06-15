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
        
        //add target when segmented control's valueChanged, call/select MapViewControllers mapTypeChanged function
        segmentedControl.addTarget(self, action: #selector(MapViewController.mapTypeChanged(_:)), for: .valueChanged)
        
        //UISegmentedControl constraints to flase, so we can setup constaints manually
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        
        //add UISegmentedControl to view
        view.addSubview(segmentedControl)
        
        //constraint instances
        //constrain the topConstraints topAnchor to the layout guides bottomAnchor, with a constant of 8
        let topConstraint = segmentedControl.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: 8)
        //use view.layoutMarginsGuide to inset the margins of the segmented control
        let margins = view.layoutMarginsGuide
        let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
        let trailingConstraint = segmentedControl.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
        
        //activate constraints
        topConstraint.isActive = true
        leadingConstraint.isActive = true
        trailingConstraint.isActive = true
        
    }//end of loadView function
    
    
    override func viewDidLoad() {
        print("MapViewController loaded its view")
    }//end of viewDidLoad
    
    //create function for changing map style
    func mapTypeChanged(_ segControl: UISegmentedControl){
        switch segControl.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .hybrid
        case 2:
            mapView.mapType = .satellite
        default:
            break
        }
    }//end of mapTypeChanged function
    
    
}//end of MapViewController
