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
    
    var favoritesRestaurantsIndexs: [Int] { return restaurants.indices.filter{ restaurants[$0].isFavorite } }
    
    func getRestaurantById(id:UUID) -> Restaurant?{
        return restaurants.first(where: { $0.id == id })
    }
    func searchRestaurant(_ key: String) -> [Int] {
        if(key == ""){
            return Array(restaurants.indices)
        }else{
            return restaurants.indices.filter({restaurants[$0].name.localizedCaseInsensitiveContains(key)})
        }
    }
    
//    func toggleRestaurantFavorite(id: UUID){
//        restaurants.first(where: { $0.id == id })?.isFavorite.toggle()
//    }
    
    func removeRestaurant(_ indexSet: IndexSet){
        restaurants.remove(atOffsets: indexSet)
    }
    
}
