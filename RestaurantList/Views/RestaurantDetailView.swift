//
//  RestaurantDetailView.swift
//  RestaurantList
//
//  Created by Reshid Huseynov on 22.02.2026.
//

import SwiftUI
import WebKit

struct RestaurantDetailView: View {
    @Environment(\.dismiss) private var dismiss
    @Binding var restaurant: Restaurant
    @State var isSheetShowing: Bool = false
    
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
                                .font(.title3)
                                .fontWeight(.bold)
                                .padding(.horizontal, 8)
                                .padding(.vertical, 4)
                                .background(.black)
                                .cornerRadius(4)
                        }
                            .padding()
                            
                    }
                    .fontDesign(.rounded)
                    .foregroundStyle(.white)
                
                VStack(alignment: .leading,spacing: 16){
                    Text(restaurant.description)
                        .font(.title3)
                    
                    HStack(spacing:32){
                        VStack(alignment: .leading){
                            Text("ADDRESS")
                                .font(.headline)
                                .fontDesign(.rounded)
                            
                            Text(restaurant.address)
                        }
                        
                        VStack(alignment: .leading){
                            Text("PHONE")
                                .font(.headline)
                                .fontDesign(.rounded)
                            
                            Text(restaurant.phone)
                        }
                    }
                    
                }
                    .padding()
                Button{
                    isSheetShowing = true
                }label:{
                    Label("Go to website", systemImage: "safari")
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.bordered)
                .padding()
                
                
            }
            
            
        }
        .ignoresSafeArea()
        .navigationBarTitle(restaurant.name)
        .navigationBarTitleDisplayMode(.inline)
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
        .sheet(isPresented: $isSheetShowing) {
            if let siteURL = URL(string: restaurant.url){
                WebView(URL: siteURL)
            }else{
                Text("Website not found")
            }
        }
        
    }
}

struct WebView: UIViewRepresentable{
    let URL: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: URL)
        uiView.load(request)
    }
}

#Preview {
    RestaurantDetailView(restaurant: .constant(restaurant1))
}
