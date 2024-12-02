//
//  FavoritesView.swift
//  pia13swiftv5mon
//
//  Created by BillU on 2024-12-02.
//

import SwiftUI

struct FavoritesView: View {
    
    @State var currentFav = "shop"
    
    var body: some View {
        VStack {
            Text("FAVORITES")

            HStack {
                
                Button(action: {
                    currentFav = "shop"
                }) {
                    Text("Shop")
                        .frame(maxWidth: .infinity)
                        .background(currentFav == "shop" ? Color.red : Color.white)
                }
                
                
                Button(action: {
                    currentFav = "store"
                }) {
                    Text("Store")
                        .frame(maxWidth: .infinity)
                        .background(currentFav == "store" ? Color.red : Color.white)
                }

            } // HStack
            
            if currentFav == "shop" {
                List {
                    Text("Ägg")
                    Text("Bananer")
                }
            }
            if currentFav == "store" {
                List {
                    Text("ICA")
                    Text("IKEA")
                }
            }
        }
        
        
    }
}

#Preview {
    FavoritesView()
}
