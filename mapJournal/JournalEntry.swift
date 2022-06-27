//
//  JournalEntry.swift
//  mapJournal
//
//  Created by Yoseph Raihani on 3/17/22.
//

import Foundation
import MapKit
import CoreLocation
class JournalEntry{
    var titleOfEntry: String
    var date: Date
    var location: CLLocationCoordinate2D
    var journalText: String
    init (titleEntered:String, dateEntered: Date, locationEntered: CLLocationCoordinate2D, journalTextEntered: String){
        titleOfEntry = titleEntered
        date = dateEntered
        location=locationEntered
        journalText=journalTextEntered
        }
}

var journals = [JournalEntry(titleEntered: "First Entry",
                             dateEntered: Date(),
                             locationEntered: CLLocationCoordinate2D (latitude: 41.87722958830955, longitude: -87.62712027386446 ),
                             journalTextEntered: "This is my first Journal Entry!"),
                JournalEntry(titleEntered: "Second Entry",
                                             dateEntered: Date(),
                             locationEntered: CLLocationCoordinate2D (latitude: 34.052, longitude: -118.243 ),
                                             journalTextEntered: "This is my second Journal Entry!")
]
