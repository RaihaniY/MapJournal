//
//  ViewController.swift
//  mapJournal
//
//  Created by Yoseph Raihani on 3/7/22.
//

import UIKit
import MapKit
import CoreLocation
class ViewController: UIViewController {
    @IBOutlet weak var map: MKMapView!
    
    func refresh(){
        let journalss = journals
        var annotations = [MKPointAnnotation]()
        for entries in journalss {
            var ann = MKPointAnnotation()
            ann.coordinate = entries.location
            annotations.append(ann)
        }
        for ann in annotations{
            map.addAnnotation(ann)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.\
        refresh()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        map.removeAnnotations(map.annotations)
        refresh()
    }
}

