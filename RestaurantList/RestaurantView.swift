//
//  RestaurantView.swift
//  RestaurantList
//
//  Created by Reshid Huseynov on 01.02.2026.
//

import SwiftUI

struct RestaurantView: View {
    var restaurant: Restaurant
    var body: some View {
        VStack(alignment: .leading, spacing: 16){
            Image(restaurant.imageName)
                .resizable()
//                .scaledToFill()
                .frame(height: 200)
                .cornerRadius(20)
            VStack(alignment: .leading){
                Text(restaurant.name)
                    .font(.title2)
                Text(restaurant.type.rawValue)
                    .font(.callout)
                Text(restaurant.location)
                    .foregroundStyle(.gray)
                    .font(.footnote)
            }
            .padding(.leading)
        }
        
//        HStack{
//            Image(restaurant.imageName)
//                .resizable()
//                .scaledToFit()
//                .frame(width: 80)
//            Text(restaurant.name)
//        }
    }
}

#Preview {
//    RestaurantView()
}
