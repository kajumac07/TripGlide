//
//  ContentView.swift
//  TripGlide
//
//  Created by Atul Tiwari on 11/12/25.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottom) {
                // Main Content Switching
                Group {
                    switch selectedTab {
                    case 0:
                        HomeView()
                    case 1:
                        TripsView()
                    case 2:
                        FavoritesView()
                    case 3:
                        ProfileView()
                    default:
                        HomeView()
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                // Floating Bottom Tab Bar
                CustomTabBar(selectedTab: $selectedTab)
                    .padding(.horizontal,14)
                    .padding(.bottom, 0)
            }
            .ignoresSafeArea(.keyboard)
        }
    }
}

#Preview {
    ContentView()
}
