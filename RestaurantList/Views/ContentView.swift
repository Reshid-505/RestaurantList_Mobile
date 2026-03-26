//
//  ContentView.swift
    //  RestaurantList
//
//  Created by Reshid Huseynov on 01.02.2026.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var vm: RestaurantListVewModel
    
    var body: some View {
        TabView{
            Tab("Home", systemImage: "house"){
                HomeView(vm: vm)
            }
            Tab("Favorites", systemImage: "heart.fill"){
                FavoritesView(vm: vm)
            }
            Tab("Search", systemImage: "magnifyingglass", role: .search){
                SearchView(vm: vm)
            }
                
        }
    }
}

#Preview {
    ContentView(vm:RestaurantListVewModel())
}
