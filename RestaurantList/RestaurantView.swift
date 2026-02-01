//
//  RestaurantView.swift
//  RestaurantList
//
//  Created by Reshid Huseynov on 01.02.2026.
//

import SwiftUI

struct RestaurantView: View {
    var restaurantName: String
    var body: some View {
        HStack{
            Image("restaurant")
                .resizable()
                .scaledToFit()
                .frame(width: 80)
            Text(restaurantName)
        }
    }
}

#Preview {
//    RestaurantView()
}
