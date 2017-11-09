//
//  SjsuPin.swift
//  137Proj
//
//  Created by ryannn on 10/10/17.
//  Copyright © 2017 ryan. All rights reserved.
//

import MapKit

class SjsuAnnotation: NSObject, MKAnnotation {
    var title: String?
    var note: String?
    var coordinate: CLLocationCoordinate2D
    
    init(title:String, note:String, coordinate:CLLocationCoordinate2D) {
        self.title = title;
        self.note = note;
        self.coordinate = coordinate;
    }
    
    
}
