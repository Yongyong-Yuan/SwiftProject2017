//
//  ViewController.swift
//  137Proj
//
//  Created by ryannn on 10/10/17.
//  Copyright © 2017 ryan. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
   
    @IBOutlet weak var mapview: MKMapView!
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        let distanceSpan:CLLocationDegrees = 1500;
        let sjsuEngrBuilding:CLLocationCoordinate2D = CLLocationCoordinate2DMake(37.337075, -121.882058)
        
        mapview.setRegion(MKCoordinateRegionMakeWithDistance(sjsuEngrBuilding, distanceSpan, distanceSpan), animated: true)
        
        let sjsuEngrPin = SjsuAnnotation(title: "SJSU", note: "Engr Building", coordinate: sjsuEngrBuilding)
        
        mapview.addAnnotation(sjsuEngrPin)
        
    }
/*
    override func didReceiveMemoryWarning() {
        super .didReceiveMemoryWarning()
    }
*/    
    
}

