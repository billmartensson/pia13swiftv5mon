//
//  ContentView.swift
//  pia13swiftv5mon
//
//  Created by BillU on 2024-12-02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            
            Tab("Shopping", systemImage: "") {
                ShoppingListView()
            }

            Tab("Stores", systemImage: "") {
                StoresView()

            }

            Tab("Favorites", systemImage: "") {
                FavoritesView()

            }

            
        }
        
        
    }
}

#Preview {
    ContentView()
}
