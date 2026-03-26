//
//  XMarkButton.swift
//  RestaurantList
//
//  Created by Reshid Huseynov on 01.02.2026.
//

import SwiftUI

struct XMarkButton: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        Button(action: {
            dismiss.callAsFunction()
        }, label: {
            if #available(iOS 26.0, *) {
                Button{
                    dismiss.callAsFunction()
                }label:{
                    Image(systemName:"xmark")
                        .frame(width: 18, height: 28)
                }
                .buttonStyle(.glass)
                .frame(width: 44, height: 44)
                .padding([.top, .trailing])
            } else {
                Button{
                    dismiss.callAsFunction()
                }label:{
                    Image(systemName:"xmark")
                        .frame(width: 18, height: 28)
                }
                .cornerRadius(999)
                .buttonStyle(.bordered)
                .frame(width: 44, height: 44)
                .padding([.top, .trailing])
            }
            
        })
    }
}
