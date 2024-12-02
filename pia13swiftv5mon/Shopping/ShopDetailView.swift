//
//  ShopDetailView.swift
//  pia13swiftv5mon
//
//  Created by BillU on 2024-12-02.
//

import SwiftUI

struct ShopDetailView: View {
    var body: some View {
        
        VStack {
            Text("SHOP DETAIL")
            
            NavigationLink(destination: ShopImageView()) {
                Text("CHOOSE IMAGE")
            }
            
            
            Button(action: {}) {
                Text("Save")
            }
                
            
            Spacer()
            
            Text("XYZ")
            
        }
        .navigationTitle("Bananer")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Text("AAAA")
            }
            ToolbarItem(placement: .topBarTrailing) {
                Text("BBBB")
            }
        }
    }
}

#Preview {
    ShopDetailView()
}
