//
//  ViewController.swift
//  GlobalImpact
//
//  Created by Delgado, Hilaria on 1/10/19.
//  Copyright © 2019 Ctec. All rights reserved.
//

import UIKit
import MapKit



public class ImpactViewController: UIViewController
    {

    @IBOutlet weak var MKMapView: MKMapView!
    @IBOutlet var UIButton: UIButton!
    @IBOutlet weak var UIImageView: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func Button(_sender: UIButton)
    {
    
    let impactLocation = CLLocationCoordinate2D(latitude: 19.4326, longitude: 99.1332)
    let mapSpan = MKCoordinateSpan(latitudeDelta: 1.05, longitudeDelta: 10.05)
    let impactRegion = MKCoordinateRegion, center: impactLocation, span:mapSpan)
    mapView.animatedZoom(zoomRegion: impactRegion, duration: 2.5)
    
    }
    
    extension MKMapView
    {
        public func animatedZoom(zoomRegion:MKCoordinateRegion, duration:TimeInterval)
        {
            MKMapView.animate(withDuration: duration, delay: 0, usingSpringWithoutDamping: 0.6, initialSpringVelocity: 10, options:
                UIView.AnimationOptions.curveEaseIn, animations:
                { self.setRegion(zoomRegion, animated: true) }, completion:nil)
        }


}

