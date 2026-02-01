//
//  ContentView.swift
//  RestaurantList
//
//  Created by Reshid Huseynov on 01.02.2026.
//

import SwiftUI

struct ContentView: View {
    var restaurants = [
        "Restaurant 1",
        "Restaurant 2",
        "Restaurant 3",
        "Restaurant 4",
        "Restaurant 5",
    ]
    var body: some View {
        List{
            ForEach (restaurants, id: \.self){ restaurantName in
                RestaurantView(restaurantName: restaurantName)
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    ContentView()
}
