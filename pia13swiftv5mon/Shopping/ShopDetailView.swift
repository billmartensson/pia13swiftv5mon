//
//  ShopDetailView.swift
//  pia13swiftv5mon
//
//  Created by BillU on 2024-12-02.
//

import SwiftUI

struct ShopDetailView: View {
    @Environment(\.dismiss) var dismiss
    
    @State var shopname = ""
        
    var body: some View {
        
        VStack {
            Text("SHOP DETAIL")
            
            NavigationLink(destination: ShopImageView()) {
                Text("CHOOSE IMAGE")
            }
            
            TextField("", text: $shopname )
                .background(Color.gray)
            
            Button(action: {
                if(shopname == "") {
                    // visa fel
                } else {
                    dismiss()
                }
            }) {
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
