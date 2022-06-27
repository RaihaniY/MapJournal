//
//  JournalViewController.swift
//  mapJournal
//
//  Created by Yoseph Raihani on 3/17/22.
//

import UIKit
import MapKit
import CoreLocation

class JournalViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var dateDisplay: UILabel!
    @IBOutlet weak var enteredTitle: UITextField!
    @IBOutlet weak var journalText: UITextView!
    
    func savebutton(){
        if (enteredTitle.text == "" || journalText.text == "")
        {
            let title:String = "Error"
            let message:String = "One of the fields is invalid"
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            
            alertController.addAction(cancelAction)
            present(alertController, animated: true,              completion: nil)
        }
        else{
            let getLocation = locationManger.location
            let location = (getLocation?.coordinate)!
            let newEntry = JournalEntry(titleEntered: enteredTitle.text!,
                dateEntered:Date.now,
                locationEntered:
                location,
                journalTextEntered: journalText.text!)
            
            journals.append(newEntry)
            let title:String = "Success"
            let message:String = "Your journal Entry has been saved!"
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            
            alertController.addAction(cancelAction)
            present(alertController, animated: true, completion: nil)
            
            
        }
    }
    
    
    
    
    
    
    @IBAction func savePressed(_ sender: Any) {
        savebutton()
    }
    
    var locationManger = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        dateDisplay.text = Date().formatted()

        // Do any additional setup after loading the view.
        /*
        let entry1 = MKPointAnnotation()
        
        var coordinate = CLLocationCoordinate2D (latitude: 41.87722958830955, longitude: -87.62712027386446 )
        
        
        let date1 = Date(timeIntervalSinceNow: 0)
        let journals = [JournalEntry(titleEntered: "First Entry", dateEntered: date1, locationEntered: coordinate, journalTextEntered: "This is my first Journal Entry!")]
    */
        
        
        locationManger.delegate = self
        locationManger.requestWhenInUseAuthorization()
        
        
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        locations.first
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        locationManger.requestLocation()
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
