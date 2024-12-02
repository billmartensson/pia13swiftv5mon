//
//  ShoppingListView.swift
//  pia13swiftv5mon
//
//  Created by BillU on 2024-12-02.
//

import SwiftUI

struct ShoppingListView: View {
    
    @State var showInfo = false
    
    @State private var path = [String]()

    var body: some View {
        
        NavigationStack(path: $path) {
            VStack {
                Text("SHOPPING LIST")
                
                NavigationLink(destination: ShopDetailView()) {
                    Text("Bananer")
                }
                
                Button(action: {
                    path.append("bananer")
                }) {
                    Text("Bananer2")
                }
                
                List {
                    Text("Mjölk")
                    Text("Ägg")
                    Text("Smör")
                }
                
                Button(action: {
                    path.append("go")
                }) {
                    Text("GO GO")
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
            .navigationDestination(for: String.self) { selection in
                if selection == "go" {
                    Text("GOGOGOGOGOGOGOGOGOGO")
                }
                if selection == "bananer" {
                    ShopDetailView()
                }
            }
            
        } //NavigationStack
    }// body
}

#Preview {
    ShoppingListView()
}
