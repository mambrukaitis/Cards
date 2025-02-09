//
//  ToolbarSelection.swift
//  Ambrukaitis_COP2654_Mod4Cards
//
//  Created by Matas Ambrukaitis on 2/9/25.
//

import Foundation

enum ToolbarSelection: CaseIterable, Identifiable {
    var id: Int {
        hashValue
    }
    case photoModal, frameModal, stickerModal, textModal
}
