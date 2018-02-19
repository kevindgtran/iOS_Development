//
//  MapViewController.swift
//  Passport
//
//  Created by Kevin Tran on 2/9/18.
//  Copyright © 2018 com.example. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var myMapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let mexico = MKPointAnnotation()
        mexico.coordinate = CLLocationCoordinate2D(latitude: 22.890533, longitude: -109.916740)
        mexico.title = "Cabo, Mexico"
        
        let paris = MKPointAnnotation()
        paris.coordinate = CLLocationCoordinate2D(latitude: 48.864716, longitude: 2.349014)
        paris.title = "Paris, France"
        
        let england = MKPointAnnotation()
        england.coordinate = CLLocationCoordinate2D(latitude: 51.509865, longitude: -0.118092)
        england.title = "London, United Kingdom"
        
        let locations = [mexico, paris, england]
        myMapView.addAnnotations(locations)
        
        let myRegion = MKCoordinateRegionMakeWithDistance(mexico.coordinate, 15_500_000,15_500_000)
        myMapView.setRegion(myRegion, animated: true)
    
    }
    
    func mapView(_ mapView: MKMapView!, viewFor annotation: MKAnnotation!) -> MKAnnotationView!{
        let pin = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "pinIdentifier")
        pin.canShowCallout = true
        return pin
    }

}
