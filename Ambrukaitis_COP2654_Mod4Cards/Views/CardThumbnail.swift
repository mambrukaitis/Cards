//
//  CardThumbnail.swift
//  Ambrukaitis_COP2654_Mod4Cards
//
//  Created by Matas Ambrukaitis on 2/9/25.
//

import SwiftUI

struct CardThumbnail: View {
    let card: Card
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .foregroundColor(card.backgroundColor)
            .frame(width: Settings.thumbnailSize.width,
                   height: Settings.thumbnailSize.height)
    }
}

#Preview {
    CardThumbnail(card: initialCards[0])
}
