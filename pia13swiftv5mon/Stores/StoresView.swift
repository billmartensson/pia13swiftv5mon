//
//  StoresView.swift
//  pia13swiftv5mon
//
//  Created by BillU on 2024-12-02.
//

import SwiftUI

struct StoresView: View {
    
    @State var showInfo = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("STORES")
                
                NavigationLink(destination: StoreDetailView()) {
                    Text("Fancy store")

                }
            }
            .navigationTitle("STORES")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    
                    Button(action: {
                        showInfo = true
                    }) {
                        Text("Info")
                    }
                }
            }
            .sheet(isPresented: $showInfo) {
                Text("STORE INFO")
            }
            
        }
    }
}

#Preview {
    StoresView()
}
