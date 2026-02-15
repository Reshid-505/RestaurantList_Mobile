//
//  RestaurantView.swift
//  RestaurantList
//
//  Created by Reshid Huseynov on 01.02.2026.
//

import SwiftUI

struct RestaurantView: View {
    @State private var showDialog: Bool = false
    @State private var isFavorite: Bool = false
    @State private var showAlert: Bool = false
    
    var restaurant: Restaurant
    var body: some View {
        VStack(alignment: .leading, spacing: 16){
            ZStack(alignment: .top){
                Image(restaurant.imageName)
                    .resizable()
                //                .scaledToFill()
                    .frame(height: 200)
                    .cornerRadius(20)
                
                HStack{
                    Spacer()
                    
                    Image(systemName: isFavorite ? "heart.fill" : "heart")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25)
                        .foregroundStyle(isFavorite ? .red : .black)
                        .fontWeight(.light)
                        .onTapGesture {
                            isFavorite.toggle()
                        }
                        .padding([.top, .trailing], 10)
                    
                }
            }
            VStack(alignment: .leading){
                Text(restaurant.name)
                    .font(.title2)
                Text(restaurant.type.rawValue)
                    .font(.callout)
                Text(restaurant.location)
                    .foregroundStyle(.gray)
                    .font(.footnote)
            }
            .padding([.leading, .bottom])
        }
        .onTapGesture {
            showDialog = true
        }
        .confirmationDialog("What do you want?", isPresented: $showDialog, titleVisibility: .visible) {
            Button{
                isFavorite.toggle()
            }label:{
                Text(isFavorite ? "Remove from favorites" : "Add to favorites")
            }
            
            Button{
                showAlert = true
            }label:{
                Text("Copy link")
            }
            
            Button{
                
            }label:{
                Text("Open in map")
            }
        }
        .alert("Link copied", isPresented: $showAlert) {
            
        } message: {
            Text("Link copied to clipboard")
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
