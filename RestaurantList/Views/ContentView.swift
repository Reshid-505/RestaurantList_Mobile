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
        NavigationStack{
            List{
                ForEach(vm.restaurants.indices, id: \.self){ index in
                    NavigationLink(destination: RestaurantDetailView(restaurant: $vm.restaurants[index])){
                        RestaurantView(restaurant: $vm.restaurants[index])
                        
                    }
                        .navigationLinkIndicatorVisibility(.hidden)
                        .listRowSeparator(.hidden)
                        .swipeActions(edge: .leading, allowsFullSwipe: false) {
                            Button{
                                
                            }label:{
                                Image(systemName: "heart")
                                    .tint(.red)
                            }
                            
                            Button{
                                
                            }label:{
                                Image(systemName: "square.and.arrow.up")
                                    .tint(.yellow)
                            }
                        }
                }
                .onDelete{ IndexSet in
                    vm.removeRestaurant(IndexSet)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Restaurants")
            
        }
    }
}

#Preview {
    ContentView(vm:RestaurantListVewModel())
}
