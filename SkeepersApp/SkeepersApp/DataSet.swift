//
//  DataSet.swift
//  SkeepersApp
//
//  Created by Alessandra Foresto on 20/11/23.
//

import Foundation


struct CardSkeepers: Identifiable
{
    var id: UUID = UUID()
    var updateName: String
    var description: String
    var image: String
    var brandName: String
    var imageIcon: String
    
}

var CardsSkeepers: [CardSkeepers] =

[

CardSkeepers(updateName: "News", description: "New cover and photo", image: "lalab", brandName: "Lalab", imageIcon: "ig"),

CardSkeepers(updateName: "News", description: "Xmas Special", image: "medavita", brandName: "Medavita", imageIcon: "tiktok"),

CardSkeepers(updateName: "Last Chance", description: "Spray Fixant Invisible", image: "sisley IT", brandName: "Sisley IT", imageIcon: "tiktok"),

CardSkeepers(updateName: "News", description: "ALPS", image: "alps", brandName: "ALPS", imageIcon: "tiktok"),

CardSkeepers(updateName: "", description: "Giochi preziosi: CRYSTAL BALL challenge", image: "giochi preziosi", brandName: "Giochi preziosi", imageIcon: "tiktok"),








]
