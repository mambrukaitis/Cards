//
//  SingleCardView.swift
//  Ambrukaitis_COP2654_Mod4Cards
//
//  Created by Matas Ambrukaitis on 2/9/25.
//

import SwiftUI

struct SingleCardView: View {
    @Environment(\.dismiss) var dismiss
    @State private var currentModal: ToolbarSelection?
    @Binding var card: Card
    
    var body: some View {
        NavigationStack {
            CardDetailView(card: $card)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Done") {
                            dismiss()
                        }
                    }
                    ToolbarItem(placement: .bottomBar) {
                        BottomToolbar(modal: $currentModal)
                    }
                }
                .sheet(item: $currentModal) { item in
                    switch item {
                    default:
                        Text(String(describing: item))
                    }
                }
        }
    }    
}

#Preview {
    SingleCardView(card: .constant(initialCards[0]))
}
