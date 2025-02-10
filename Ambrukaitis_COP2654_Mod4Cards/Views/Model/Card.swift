//
//  Card.swift
//  Ambrukaitis_COP2654_Mod4Cards
//
//  Created by Matas Ambrukaitis on 2/9/25.
//

import SwiftUI

struct Card: Identifiable {
    let id = UUID()
    var backgroundColor: Color = .yellow
    var elements: [CardElement] = []
    mutating func addElement(uiImage: UIImage) {
        let element = ImageElement(uiImage: uiImage)
        elements.append(element)
    }
}
