//
//  JournalViewController.swift
//  mapJournal
//
//  Created by Yoseph Raihani on 3/17/22.
//

import UIKit
import MapKit
import CoreLocation
class JournalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let entry1 = MKPointAnnotation()
        
        entry1.coordinate = CLLocationCoordinate2D (latitude: 41.87722958830955, longitude: -87.62712027386446 )
        
        
        let date1 = Date(timeIntervalSinceNow: 0)
        let journals = [JournalEntry(titleEntered: "First Entry", dateEntered: date1, locationEntered: entry1, journalTextEntered: "This is my first Journal Entry!")]
    
    }

    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
