//
//  CardThumbnail.swift
//  Ambrukaitis_COP2654_Mod4Cards
//
//  Created by Matas Ambrukaitis on 2/9/25.
//

import SwiftUI

struct CardThumbnail: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .foregroundColor(.random())
            .frame(width: Settings.thumbnailSize.width,
                   height: Settings.thumbnailSize.height)
    }
}

#Preview {
    CardThumbnail()
}
