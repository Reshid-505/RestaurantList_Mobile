//
//  ContentView.swift
    //  RestaurantList
//
//  Created by Reshid Huseynov on 01.02.2026.
//

import SwiftUI

struct ContentView: View {
    @State var restaurants: [Restaurant] = [
        restaurant1,
        restaurant2,
        restaurant3,
        restaurant4,
        restaurant5,
        ]
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(restaurants.indices, id: \.self){ index in
                    NavigationLink(destination: RestaurantDetailView(restaurant: $restaurants[index])){
                        RestaurantView(restaurant: $restaurants[index])
                        
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
                .onDelete { IndexSet in
                    restaurants.remove(atOffsets: IndexSet)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Restaurants")
//            .navigationBarTitleDisplayMode(.automatic)
            
        }
    }
}

#Preview {
    ContentView()
}
