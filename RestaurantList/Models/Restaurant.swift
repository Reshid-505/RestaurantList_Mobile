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
    var category: String
    var city: String
}

var restaurant1 = Restaurant(name: "McDonald's", imageName: "mcdonald's", category: "Fast Food", city: "USA")
var restaurant2 = Restaurant(name: "Burger King", imageName: "burgerking", category: "Fast Food", city: "USA")
var restaurant3 = Restaurant(name: "Wendy's", imageName: "wendy's", category: "Fast Food", city: "USA")
var restaurant4 = Restaurant(name: "KFC", imageName: "kfc", category: "Fast Food", city: "USA")
var restaurant5 = Restaurant(name: "Five Guys", imageName: "fiveguys", category: "Fast Food", city: "USA")
var restaurants:[Restaurant] = [
    restaurant1,
    restaurant2,
    restaurant3,
    restaurant4,
    restaurant5,
    ]
