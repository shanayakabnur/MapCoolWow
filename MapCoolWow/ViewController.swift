//
//  ViewController.swift
//  MapCoolWow
//
//  Created by Scholar on 6/28/22.
//

import UIKit
import MapKit
class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mapView.delegate = self
        // Do any additional setup after loading the view.
        
        // set the initial location
        let sourceLocation = CLLocationCoordinate2D(latitude: 40.765, longitude: -73.765)
        
        // add a map pin
        let sourcePlacemark = MKPlacemark(coordinate: sourceLocation, addressDictionary: nil)
        
        let sourceMapItem = MKMapItem(placemark: sourcePlacemark)
        
        //label the map pin
        
        let sourceAnnotation = MKPointAnnotation()
        sourceAnnotation.title = "Random"
        
        if let location = sourcePlacemark.location{
            sourceAnnotation.coordinate = location.coordinate}
        
        //show region of choice
        self.mapView.showAnnotations([sourceAnnotation],
            animated: true)
        
        
    }


}

