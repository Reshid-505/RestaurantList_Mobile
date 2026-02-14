//
//  ContentView.swift
//  RestaurantList
//
//  Created by Reshid Huseynov on 01.02.2026.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        List(restaurants, id: \.self){ restaurant in
            RestaurantView(restaurant: restaurant)
                .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
    }
}

#Preview {
    ContentView()
}
