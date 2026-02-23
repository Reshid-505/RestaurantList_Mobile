//
//  RestaurantDetailView.swift
//  RestaurantList
//
//  Created by Reshid Huseynov on 22.02.2026.
//

import SwiftUI

struct RestaurantDetailView: View {
    @Environment(\.dismiss) private var dismiss
    @Binding var restaurant: Restaurant
    
    var body: some View {
        GeometryReader{ geometry in
            let screenHeigh = geometry.size.height
            let screenWidth = geometry.size.width
            let imagePreviewHeight = screenHeigh / 2
            
            ScrollView {
                Image(restaurant.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width:screenWidth,height: imagePreviewHeight, alignment: .center)
                    .overlay(alignment: .bottomLeading){
                        VStack(alignment:.leading, spacing: 10){
                            Text(restaurant.name)
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .shadow(radius: 10)
                            Text(restaurant.type.rawValue)
                                .foregroundStyle(.white)
                                .font(.title3)
                                .fontWeight(.bold)
                                .padding(.horizontal, 8)
                                .padding(.vertical, 4)
                                .background(.black)
                        }
                            .padding()
                            
                    }
                    .fontDesign(.rounded)
                
                VStack(alignment: .leading,spacing: 16){
                    Text(restaurant.description)
                        .font(.title3)
                    
                    HStack(spacing:32){
                        VStack(alignment: .leading){
                            Text("ADDRESS")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Text(restaurant.address)
                        }
                        
                        VStack(alignment: .leading){
                            Text("PHONE")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Text(restaurant.phone)
                        }
                    }
                    
                }
                    .padding()
                
            }
            .foregroundStyle(.white)
            
            
        }
        .ignoresSafeArea()
        .navigationBarTitle(restaurant.name)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden()
        .background(.black)
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
            ToolbarItem(placement: .topBarTrailing){
                Button{
                    restaurant.isFavorite.toggle()
                }label:{
                    Image(systemName: restaurant.isFavorite ? "heart.fill" : "heart")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25)
                        .foregroundStyle(restaurant.isFavorite ? .red : .black)
                        .fontWeight(.light)
                }
            }
        }
    }
}

#Preview {
    RestaurantDetailView(restaurant: .constant(restaurant1))
}
