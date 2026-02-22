//
//  RestaurantView.swift
//  RestaurantList
//
//  Created by Reshid Huseynov on 01.02.2026.
//

import SwiftUI

struct RestaurantView: View {
//    @State private var showDialog: Bool = false
    @State private var showAlert: Bool = false
    
    @Binding var restaurant: Restaurant
    
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
                    
                    Image(systemName: restaurant.isFavorite ? "heart.fill" : "heart")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25)
                        .foregroundStyle(restaurant.isFavorite ? .red : .black)
                        .fontWeight(.light)
                        .onTapGesture {
                            restaurant.isFavorite.toggle()
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
        .contextMenu{
            Button{
                restaurant.isFavorite.toggle()
            }label:{
                Label(restaurant.isFavorite ? "Remove from favorites" : "Add to favorites", systemImage: restaurant.isFavorite ? "heart.slash" : "heart")
            }
            
            Button{
                showAlert = true
            }label:{
                Label("Copy link", systemImage: "document.on.document")
            }
            
            Button{
                
            }label:{
                Label("Open in map", systemImage: "map")
            }
        }
//        .onTapGesture {
//            showDialog = true
//        }
//        .confirmationDialog("What do you want?", isPresented: $showDialog, titleVisibility: .visible) {
//            Button{
//                restaurant.isFavorite.toggle()
//            }label:{
//                Text(restaurant.isFavorite ? "Remove from favorites" : "Add to favorites")
//            }
//            
//            Button{
//                showAlert = true
//            }label:{
//                Text("Copy link")
//            }
//            
//            Button{
//                
//            }label:{
//                Text("Open in map")
//            }
//        }
        .alert("Link copied", isPresented: $showAlert) {
            
        } message: {
            Text("Link copied to clipboard")
        }

    }
}

#Preview {
//    RestaurantView()
}
