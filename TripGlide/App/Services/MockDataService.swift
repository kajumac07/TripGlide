//
//  MockDataService.swift
//  TripGlide
//
//  Created by Atul Tiwari on 11/12/25.
//

import SwiftUI

class MockDataService {
    static let shared = MockDataService()
    
    let sampleDestinations = [
        Destination(
            name: "Rio de Janeiro",
            country: "Brazil",
            description: "Rio de Janeiro, often simply called Rio, is one of Brazil's most iconic cities, renowned for its breathtaking landscapes, vibrant culture, and famous landmarks.",
            rating: 5.0,
            reviews: 143,
            imageUrl: "https://images.unsplash.com/photo-1483729558449-99ef09a8c325?q=80&w=1000&auto=format&fit=crop",
            price: 659
        ),
        Destination(
            name: "Machu Picchu",
            country: "Peru",
            description: "An Incan citadel set high in the Andes Mountains in Peru, above the Urubamba River valley.",
            rating: 4.9,
            reviews: 1205,
            imageUrl: "https://images.unsplash.com/photo-1526392060635-9d6019884377?q=80&w=1000&auto=format&fit=crop",
            price: 850
        )
    ]
    
    let sampleTours = [
        Tour(name: "Iconic Brazil", duration: "8 days", price: 659, rating: 4.6, reviews: 56, imageUrl: "https://images.unsplash.com/photo-1596395811776-59a859ebc2b0?q=80&w=600&auto=format&fit=crop"),
        Tour(name: "Beach Paradise", duration: "5 days", price: 420, rating: 4.8, reviews: 89, imageUrl: "https://images.unsplash.com/photo-1507525428034-b723cf961d3e?q=80&w=600&auto=format&fit=crop")
    ]
    
    let categories = ["Asia", "Europe", "South America", "North America"]
}
