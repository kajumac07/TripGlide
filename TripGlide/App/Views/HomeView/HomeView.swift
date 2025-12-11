//
//  HomeView.swift
//  TripGlide
//
//  Created by Atul Tiwari on 11/12/25.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText = ""
    @State private var selectedCategory = "South America"
    private let dataServices = MockDataService.shared
   
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                // top section
                HStack {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Hello, Darling")
                            .font(.title2)
                            .fontWeight(.bold)
                        Text("Welcome to TripGlide")
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                    }
                    Spacer()
                    AsyncImage(
                        url: URL(
                            string:
                                "https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=200&auto=format&fit=crop"
                        )
                    ) { image in
                        image.resizable().scaledToFill()
                    } placeholder: {
                        Color.gray.opacity(0.3)
                    }
                    .frame(width: 44, height: 44)
                    .clipShape(Circle())
                }
                .padding(.horizontal, 10)
                .padding(.top, 10)
                
                // search bar
                HStack {
                    Image(systemName: "magnifyingglass")
                    TextField("Search ", text: $searchText)
                    Image(systemName: "slider.horizontal.3")
                        .padding(15)
                        .background(.black)
                        .foregroundStyle(.white)
                        .clipShape(.circle)
                }
                .padding(7)
                .background(Color.gray.opacity(0.08))
                .cornerRadius(30)
                .padding(.horizontal, 15)
                
                // categories lists
                VStack(alignment: .leading, spacing: 16) {
                    Text("Select Your next Trip")
                        .font(.headline)
                        .padding(.horizontal, 10)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 12) {
                            ForEach(dataServices.categories, id: \.self) { category in
                                Button {
                                    selectedCategory = category
                                } label: {
                                    Text(category)
                                        .font(.subheadline)
                                        .fontWeight(.medium)
                                        .padding(.horizontal, 20)
                                        .padding(.vertical, 12)
                                        .foregroundStyle(selectedCategory == category ? .white : .primary)
                                        .background(selectedCategory == category ? Color.black : Color.gray.opacity(0.2))
                                        .clipShape(Capsule())
                                }
                                .buttonStyle(.plain)
                            }
                        }
                        .padding(.horizontal, 10)
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    HomeView()
}
