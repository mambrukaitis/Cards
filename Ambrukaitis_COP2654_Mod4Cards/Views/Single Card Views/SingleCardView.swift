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
    @State private var stickerImage: UIImage?
    
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
                    case .stickerModal:
                        StickerModal(stickerImage: $stickerImage)
                            .onDisappear {
                                if let stickerImage = stickerImage {
                                    card.addElement(uiImage: stickerImage)
                                }
                                stickerImage = nil
                            }
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
