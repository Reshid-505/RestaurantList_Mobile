//
//  ContentView.swift
//  RestaurantList
//
//  Created by Reshid Huseynov on 01.02.2026.
//

import SwiftUI

struct ContentView: View {
    @State var restaurants: [Restaurant] = [
        restaurant1,
        restaurant2,
        restaurant3,
        restaurant4,
        restaurant5,
        ]
    
    var body: some View {
        List(restaurants.indices, id: \.self){ index in
            RestaurantView(restaurant: $restaurants[index])
                .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
    }
}

#Preview {
    ContentView()
}
