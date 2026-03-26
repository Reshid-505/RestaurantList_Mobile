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
    let address: String
    let description: String
    let phone: String
    let url: String
    var isFavorite: Bool = false
}

var restaurant1 = Restaurant(name: "McDonald's", imageName: "mcdonald's", type: .fastFood, location: "USA",address: "10207 Lakewood Boulevard at Florence Avenue in Downey, California, United States.", description: "Searching for great breakfast eateries and coffee? This place is for you. We open at 6:30 every morning, and close at 9 PM. We offer espresso and espresso based drink, such as capuccino, cafe latte, piccolo and many more. Come over and enjoy a great meal.", phone:"+1 562-622-9248", url:"https://www.mcdonalds.com")
var restaurant2 = Restaurant(name: "Burger King", imageName: "burgerking", type: .fastFood, location: "USA",address: "7146 Beach Boulevard in Jacksonville, Florida, United States", description: "Searching for great breakfast eateries and coffee? This place is for you. We open at 6:30 every morning, and close at 9 PM. We offer espresso and espresso based drink, such as capuccino, cafe latte, piccolo and many more. Come over and enjoy a great meal.", phone:"232-923423", url:"https://www.bk.com")
var restaurant3 = Restaurant(name: "Wendy's", imageName: "wendy's", type: .fastFood, location: "USA",address: "257 East Broad Street in Columbus, Ohio, United States.", description: "Searching for great breakfast eateries and coffee? This place is for you. We open at 6:30 every morning, and close at 9 PM. We offer espresso and espresso based drink, such as capuccino, cafe latte, piccolo and many more. Come over and enjoy a great meal.", phone:"(614) 251-8461", url:"https://www.wendys.com")
var restaurant4 = Restaurant(name: "KFC", imageName: "kfc", type: .fastFood, location: "USA",address: "3890 South State Street in South Salt Lake, Utah, United States.", description: "Searching for great breakfast eateries and coffee? This place is for you. We open at 6:30 every morning, and close at 9 PM. We offer espresso and espresso based drink, such as capuccino, cafe latte, piccolo and many more. Come over and enjoy a great meal.", phone:"(801) 266-4431", url:"https://www.kfc.az")
var restaurant5 = Restaurant(name: "Five Guys", imageName: "fiveguys", type: .fastFood, location: "USA",address: "1946 Arlington Boulevard in Arlington, Virginia, United States.", description: "Searching for great breakfast eateries and coffee? This place is for you. We open at 6:30 every morning, and close at 9 PM. We offer espresso and espresso based drink, such as capuccino, cafe latte, piccolo and many more. Come over and enjoy a great meal.", phone:"232-923423", url:"https://www.fiveguys.com")

