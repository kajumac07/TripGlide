//
//  CustomTabBar.swift
//  TripGlide
//
//  Created by Atul Tiwari on 11/12/25.
//

import SwiftUI

struct CustomTabBar: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        HStack {
            TabBarButton(icon: "house.fill", tabIndex: 0, selectedTab: $selectedTab)
            Spacer()
            TabBarButton(icon: "list.bullet", tabIndex: 1, selectedTab: $selectedTab)
            Spacer()
            TabBarButton(icon: "heart", tabIndex: 2, selectedTab: $selectedTab)
            Spacer()
            TabBarButton(icon: "square.grid.2x2", tabIndex: 3, selectedTab: $selectedTab)
        }
        .padding(.horizontal, 30)
        .padding(.vertical, 16)
        .background(Color(red: 0.1, green: 0.1, blue: 0.1))
        .cornerRadius(40)
        .shadow(color: .black.opacity(0.3), radius: 10, y: 5)
    }
}

struct TabBarButton: View {
    let icon: String
    let tabIndex: Int
    @Binding var selectedTab: Int
    
    var body: some View {
        Button(action: {
            withAnimation {
                selectedTab = tabIndex
            }
        }) {
            Image(systemName: icon)
                .font(.system(size: 20))
                .foregroundColor(selectedTab == tabIndex ? .black : .gray)
                .padding(12)
                .background(selectedTab == tabIndex ? Color.white : Color.clear)
                .clipShape(Circle())
        }
    }
}

#Preview {
    CustomTabBar(selectedTab: .constant(0))
}
