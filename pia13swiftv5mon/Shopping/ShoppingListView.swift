//
//  ShoppingListView.swift
//  pia13swiftv5mon
//
//  Created by BillU on 2024-12-02.
//

import SwiftUI

struct ShoppingListView: View {
    
    @State var showInfo = false
    
    var body: some View {
        
        NavigationStack {
            VStack {
                Text("SHOPPING LIST")
                
                NavigationLink(destination: ShopDetailView()) {
                    Text("Bananer")
                }
                
                List {
                    Text("Mjölk")
                    Text("Ägg")
                    Text("Smör")
                }
                
            }
            .navigationTitle("SHOPPING")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("ABC")
                }
                ToolbarItem(placement: .topBarTrailing) {
                    
                    Button(action: {
                        showInfo = true
                    }) {
                        Text("Info")
                    }
                }
            }
            .fullScreenCover(isPresented: $showInfo) {
                InfoView()
            }
            
        } //NavigationStack
    }// body
}

#Preview {
    ShoppingListView()
}
