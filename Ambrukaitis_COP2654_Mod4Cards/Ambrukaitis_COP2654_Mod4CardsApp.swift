//
//  Ambrukaitis_COP2654_Mod4CardsApp.swift
//  Ambrukaitis_COP2654_Mod4Cards
//
//  Created by Matas Ambrukaitis on 2/9/25.
//

import SwiftUI

@main
struct Ambrukaitis_COP2654_Mod4CardsApp: App {
    @StateObject var store = CardStore(defaultData: true)
    var body: some Scene {
        WindowGroup {
            CardsListView()
                .environmentObject(store)
        }
    }
}
