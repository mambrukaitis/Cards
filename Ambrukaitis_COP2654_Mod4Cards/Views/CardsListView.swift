//
//  CardsListView.swift
//  Ambrukaitis_COP2654_Mod4Cards
//
//  Created by Matas Ambrukaitis on 2/9/25.
//

import SwiftUI

struct CardsListView: View {
    @State private var isPresented: Bool = false
    
    var body: some View {
        List
        .fullScreenCover(isPresented: $isPresented) {
            SingleCardView()
        }
    }
    
    var List: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(0..<10) { _ in
                    CardThumbnail()
                        .onTapGesture {
                            isPresented = true
                        }

                }
            }
        }
    }
    
}

#Preview {
    CardsListView()
}
