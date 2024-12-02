//
//  InfoView.swift
//  pia13swiftv5mon
//
//  Created by BillU on 2024-12-02.
//

import SwiftUI

struct InfoView: View {

    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("INFO")
            
            Button(action: {
                dismiss()
            }) {
                Text("Close")
            }
        }
    }
}

#Preview {
    InfoView()
}
