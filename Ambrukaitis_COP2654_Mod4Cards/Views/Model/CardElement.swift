//
//  CardElement.swift
//  Ambrukaitis_COP2654_Mod4Cards
//
//  Created by Matas Ambrukaitis on 2/9/25.
//

import SwiftUI

protocol CardElement {
    var id: UUID { get }
    var transform: Transform { get set }
}

extension CardElement {
    func index(in array: [CardElement]) -> Int? {
        array.firstIndex {$0.id == id }
    }
}

struct ImageElement: CardElement {
    var id = UUID()
    var transform = Transform()
    var image: Image {
        Image(
            uiImage: uiImage ??
            UIImage(named: "error-image") ??
            UIImage())
    }
    var uiImage: UIImage?
}

struct TextElement: CardElement {
    var id = UUID()
    var transform = Transform()
    var text = ""
    var textColor = Color.black
    var textFont = "Gill Sans"
}
