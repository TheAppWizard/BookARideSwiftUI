//
//  Card.swift
//  BookARide
//
//  Created by Shreyas Vilaschandra Bhike on 24/05/22.
//

import SwiftUI
import Foundation


struct Card: Identifiable {
    var id  = UUID()
    var image : String
    var title : String
    var description : String
    var temp : String
    
}

var testData:[Card] = [

 //Card(image: "dancer1", title: "String", description: "String"),
 
     
    
    
    Card(
        image:"wind.snow",
        title: "Confirm Your Driver",
        description: "Huge drivers network helps you find comforable safe and clean ride",
        temp: "2"),
    
    Card(image:"cloud.sun.fill",
         title: "Request Ride",
         description: "Request a ride get picked up by a nearby community driver",
         temp: "18"),

    Card(image:"sun.max.fill",
         title: "Track Your Ride",
         description: "Know your driver in advance and be able to view current location in real time on map",
         temp: "23"),





]
