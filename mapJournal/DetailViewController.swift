//
//  DetailViewController.swift
//  mapJournal
//
//  Created by Yoseph Raihani on 3/17/22.
//

import UIKit
import MapKit
import CoreLocation

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var journal: JournalEntry?
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var map: MKMapView!
    @IBOutlet weak var JournalText: UITextView!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let j = journal {
            titleLabel.text = j.titleOfEntry
            dateLabel.text = j.date.formatted()
            var annotation = MKPointAnnotation()
            annotation.coordinate = j.location
            map.addAnnotation(annotation)
            JournalText.text = j.journalText
        }
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
