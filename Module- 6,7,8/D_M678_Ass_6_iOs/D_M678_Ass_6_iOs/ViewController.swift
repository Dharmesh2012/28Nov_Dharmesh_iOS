//
//  ViewController.swift
//  D_M678_Ass_6_iOs
//
//  Created by Dharmesh N. Agravat on 20/04/23.
//


//make an app to add map using map kit.

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    var locationManager = CLLocationManager()
    @IBOutlet weak var mymap: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.requestAlwaysAuthorization()
        locationJamnagar()
    }

    @IBAction func segmentTypes(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex==0
        {
            mymap.mapType = .standard
            locationJamnagar()
        }
        if sender.selectedSegmentIndex==1
        {
            mymap.mapType = .satellite
        }
        if sender.selectedSegmentIndex==2
        {
            mymap.mapType = .hybrid
        }
    }
    
    func locationJamnagar() {
        let latitude : CLLocationDegrees = 22.4607243
        let longitude : CLLocationDegrees = 70.0158389
        let latDelta : CLLocationDegrees = 0.01
        let lonDelta : CLLocationDegrees = 0.01
        
        
        let location : CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let span : MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
        let region : MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
        
        self.mymap.setRegion(region, animated: true)
        
        let annotation : MKPointAnnotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Jamnagar Hoo"
        
        self.mymap.addAnnotation(annotation)
    }
    
}

