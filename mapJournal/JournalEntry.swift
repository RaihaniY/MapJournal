//
//  JournalEntry.swift
//  mapJournal
//
//  Created by Yoseph Raihani on 3/17/22.
//

import Foundation
import MapKit
class JournalEntry{
    var titleOfEntry: String
    var date: Date
    var location: MKPointAnnotation
    var journalText: String
    init (titleEntered:String, dateEntered: Date, locationEntered: MKPointAnnotation, journalTextEntered: String){
        titleOfEntry = titleEntered
        date = dateEntered
        location=locationEntered
        journalText=journalTextEntered
        }
}
