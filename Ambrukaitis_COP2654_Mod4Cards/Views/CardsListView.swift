//
//  CardsListView.swift
//  Ambrukaitis_COP2654_Mod4Cards
//
//  Created by Matas Ambrukaitis on 2/9/25.
//

import SwiftUI

struct CardsListView: View {
    @EnvironmentObject var store: CardStore
    @State private var selectedCard: Card?
    
    var body: some View {
        List
            .fullScreenCover(item: $selectedCard) { card in
                if let index = store.index(for: card) {
                    SingleCardView(card: $store.cards[index])
                } else {
                    fatalError("Unable to locate selected card")
                }
        }
    }
    
    var List: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(store.cards) { card in
                    CardThumbnail(card: card)
                        .onTapGesture {
                            selectedCard = card
                        }

                }
            }
        }
    }
    
}

#Preview {
    CardsListView()
        .environmentObject(CardStore(defaultData: true))
}
