//
//  DeveloperPreview.swift
//  AirBnb
//
//  Created by Kumaran Nathan on 2/3/24.
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    var listings: [Listing]  = [
        .init(
             id: NSUUID().uuidString,
             ownerUid: NSUUID().uuidString,
             ownerName: "Lewis Hamiliton",
             ownnerImageURL: "lewis-pfp",
             numberOfBedrooms: 4,
             numberOfBathrooms: 3,
             numberOfGuests: 4,
             numberOfBeds: 4,
             PricePerNight: 567,
             latitude: 25.7850,
             longitude: -80.1936,
             imageURLS: ["listing-2", "listing-1", "listing-4", "listing-4"],
             address: "124 Main St",
             city: "Miami",
             state: "Florida",
             title: "Miami Villa",
             rating: 4.86,
             features: [ .superHost, .selfCheckin],
             amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
             type: .villa
             ),
        .init(
             id: NSUUID().uuidString,
             ownerUid: NSUUID().uuidString,
             ownerName: "Roman Roy",
             ownnerImageURL: "roman-pfp",
             numberOfBedrooms: 4,
             numberOfBathrooms: 3,
             numberOfGuests: 4,
             numberOfBeds: 4,
             PricePerNight: 712,
             latitude: 25.7050,
             longitude: -80.1936,
             imageURLS: ["listing-6", "listing-5", "listing-2", "listing-1"],
             address: "321 South St",
             city: "Miami",
             state: "Florida",
             title: "Stunning Miami apartment in downtown Brickell",
             rating: 4.23,
             features: [ .superHost, .selfCheckin],
             amenities: [.wifi, .office, .balcony, .laundry, .tv],
             type: .apartment
             ),
        .init(
             id: NSUUID().uuidString,
             ownerUid: NSUUID().uuidString,
             ownerName: "Ryomen Sukuna",
             ownnerImageURL: "sukuna-pfp",
             numberOfBedrooms: 1,
             numberOfBathrooms: 1,
             numberOfGuests: 2,
             numberOfBeds: 2,
             PricePerNight: 1323,
             latitude: 34.1,
             longitude: -118.1426,
             imageURLS: ["listing-7", "listing-3", "listing-6", "listing-4"],
             address: "321 Hollywood Blvd",
             city: "Los Angeles",
             state: "California",
             title: "Beatiful Los Angeles home in Hollywood Hills",
             rating: 4.88,
             features: [ .superHost, .selfCheckin],
             amenities: [.wifi, .pool, .balcony, .tv, .kitchen],
             type: .house
             ),
        .init(
             id: NSUUID().uuidString,
             ownerUid: NSUUID().uuidString,
             ownerName: "Ben Cahn",
             ownnerImageURL: "male-profile-picture",
             numberOfBedrooms: 3,
             numberOfBathrooms: 2,
             numberOfGuests: 5,
             numberOfBeds: 4,
             PricePerNight: 1620,
             latitude: 34.1,
             longitude: -120.1426,
             imageURLS: ["listing-8", "listing-1", "listing-4", "listing-2"],
             address: "7699 Hollywood Blvd",
             city: "Los Angeles",
             state: "California",
             title: "Beatiful Los Angeles Villa in Suburbs",
             rating: 4.88,
             features: [ .superHost, .selfCheckin],
             amenities: [.wifi, .pool, .balcony, .tv, .kitchen, .alarmSystem],
             type: .villa
             ),
        .init(
             id: NSUUID().uuidString,
             ownerUid: NSUUID().uuidString,
             ownerName: "Jamie Park",
             ownnerImageURL: "kyla-pfp",
             numberOfBedrooms: 5,
             numberOfBathrooms: 3,
             numberOfGuests: 6,
             numberOfBeds: 4,
             PricePerNight: 7966,
             latitude: 42.23409650292578,
             longitude: -83.6694234859318,
             imageURLS: ["emma-5", "emma-3", "emma-2", "emma-1"],
             address: "7699 Hollywood Blvd",
             city: "Los Angeles",
             state: "California",
             title: "Unique Los Angeles Villa surronded by nature",
             rating: 4.88,
             features: [ .superHost, .selfCheckin],
             amenities: [.wifi, .pool, .balcony, .tv, .kitchen, .alarmSystem],
             type: .villa
             ),
        ]

        
        
        
        
}
