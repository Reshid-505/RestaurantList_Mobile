//
//  Restaurant.swift
//  RestaurantList
//
//  Created by Reshid Huseynov on 01.02.2026.
//

import Foundation

struct Restaurant: Identifiable, Hashable{
    let id: UUID = UUID()
    let name: String
    let imageName: String
    let type: RestaurantType
    let location: String
    var isFavorite: Bool = false
}

var restaurant1 = Restaurant(name: "McDonald's", imageName: "mcdonald's", type: .fastFood, location: "USA")
var restaurant2 = Restaurant(name: "Burger King", imageName: "burgerking", type: .fastFood, location: "USA")
var restaurant3 = Restaurant(name: "Wendy's", imageName: "wendy's", type: .fastFood, location: "USA")
var restaurant4 = Restaurant(name: "KFC", imageName: "kfc", type: .fastFood, location: "USA")
var restaurant5 = Restaurant(name: "Five Guys", imageName: "fiveguys", type: .fastFood, location: "USA")

