//
//  RestaurantListVewModel.swift
//  RestaurantList
//
//  Created by Reshid Huseynov on 08.03.2026.
//

import SwiftUI
internal import Combine

final class RestaurantListVewModel: ObservableObject{
    
    @Published var restaurants: [Restaurant] = [
        restaurant1,
        restaurant2,
        restaurant3,
        restaurant4,
        restaurant5,
        ]
    
    func removeRestaurant(_ indexSet: IndexSet){
        restaurants.remove(atOffsets: indexSet)
    }
    
}
