//
//  SearchView.swift
//  RestaurantList
//
//  Created by Reshid Huseynov on 14.03.2026.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var vm: RestaurantListVewModel
    @State var searchKey: String = ""
    var body: some View {
        
        NavigationStack{
            if(vm.searchRestaurant(searchKey).count>0 || searchKey==""){
                List{
                    ForEach(vm.searchRestaurant(searchKey), id: \.self){ index in
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
                .navigationTitle("Search")
            }else{
                Text("No Restaurant found")
                    .navigationTitle("Search")
            }

        }
            .searchable(text: $searchKey, prompt: "Search...")
    }
}

#Preview {
    SearchView(vm: RestaurantListVewModel())
}
