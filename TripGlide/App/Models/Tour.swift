//
//  Tour.swift
//  TripGlide
//
//  Created by Atul Tiwari on 11/12/25.
//

import SwiftUI

struct Tour: Identifiable {
    let id = UUID()
    let name: String
    let duration: String
    let price: Int
    let rating: Double
    let reviews: Int
    let imageUrl: String
}
