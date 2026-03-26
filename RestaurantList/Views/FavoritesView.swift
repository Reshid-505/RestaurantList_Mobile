//
//  FavoritesView.swift
//  RestaurantList
//
//  Created by Reshid Huseynov on 14.03.2026.
//

import SwiftUI

struct FavoritesView: View {
    @ObservedObject var vm: RestaurantListVewModel
    var body: some View {
        NavigationStack{
            if(vm.favoritesRestaurantsIndexs.count>0){
                List{
                    ForEach(vm.favoritesRestaurantsIndexs, id: \.self){ index in
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
                }
                .listStyle(.plain)
                .navigationTitle("Favorites")
            }else{
                Text("No favorites")
                    .navigationTitle("Favorites")
            }
            
        }
    }
}

#Preview {
    FavoritesView(vm:RestaurantListVewModel())
}
