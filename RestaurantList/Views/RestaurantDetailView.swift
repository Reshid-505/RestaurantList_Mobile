//
//  RestaurantDetailView.swift
//  RestaurantList
//
//  Created by Reshid Huseynov on 22.02.2026.
//

import SwiftUI

struct RestaurantDetailView: View {
    @Environment(\.dismiss) private var dismiss
    var restaurant: Restaurant
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                Image(restaurant.imageName)
                    .resizable()
                    .frame(height: 250)
                    .cornerRadius(20)

                
                HStack(alignment: .top){
                    VStack(alignment: .leading){
                        Text(restaurant.name)
                            .font(.title2)
                        Text(restaurant.type.rawValue)
                            .font(.callout)
                        Text(restaurant.location)
                            .foregroundStyle(.gray)
                            .font(.footnote)
                    }
                    
                    Spacer()
                    
                    Image(systemName: restaurant.isFavorite ? "heart.fill" : "heart")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25)
                        .foregroundStyle(restaurant.isFavorite ? .red : .black)
                        .fontWeight(.light)
                        .padding([.top, .trailing], 10)
                }
                .padding([.leading, .bottom])
                
                Spacer()
            }
            .padding()
            .navigationBarTitle(restaurant.name)
            .navigationBarBackButtonHidden()
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Button{
                        dismiss()
                    }label:{
                        HStack{
                            Image(systemName: "chevron.left")
                            Text("Restaurants")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    RestaurantDetailView(restaurant: restaurant3)
}
