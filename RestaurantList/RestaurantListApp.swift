//
//  RestaurantListApp.swift
//  RestaurantList
//
//  Created by Reshid Huseynov on 01.02.2026.
//

import SwiftUI

@main
struct RestaurantListApp: App {
    @StateObject var viewModel: RestaurantListVewModel = RestaurantListVewModel()
    var body: some Scene {
        WindowGroup {
            ContentView(vm:viewModel)
        }
    }
}
