//
//  Destination.swift
//  TripGlide
//
//  Created by Atul Tiwari on 11/12/25.
//

import SwiftUI

struct Destination: Identifiable {
    let id = UUID()
    let name: String
    let country: String
    let description: String
    let rating: Double
    let reviews: Int
    let imageUrl: String
    let price: Int
}
