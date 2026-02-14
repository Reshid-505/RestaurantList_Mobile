//
//  Restaurant.swift
//  RestaurantList
//
//  Created by Reshid Huseynov on 01.02.2026.
//

import Foundation

struct Restaurant: Identifiable, Hashable{
    var id: UUID = UUID()
    var name: String
    var imageName: String
    var type: RestaurantType
    var city: String
}

var restaurant1 = Restaurant(name: "McDonald's", imageName: "mcdonald's", type: .fastFood, city: "USA")
var restaurant2 = Restaurant(name: "Burger King", imageName: "burgerking", type: .fastFood, city: "USA")
var restaurant3 = Restaurant(name: "Wendy's", imageName: "wendy's", type: .fastFood, city: "USA")
var restaurant4 = Restaurant(name: "KFC", imageName: "kfc", type: .fastFood, city: "USA")
var restaurant5 = Restaurant(name: "Five Guys", imageName: "fiveguys", type: .fastFood, city: "USA")
var restaurants:[Restaurant] = [
    restaurant1,
    restaurant2,
    restaurant3,
    restaurant4,
    restaurant5,
    ]
