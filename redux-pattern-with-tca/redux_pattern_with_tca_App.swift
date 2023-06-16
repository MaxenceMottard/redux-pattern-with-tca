//
//  redux_pattern_with_tcaApp.swift
//  redux-pattern-with-tca
//
//  Created by Maxence Mottard on 16/06/2023.
//

import SwiftUI

@main
struct redux_pattern_with_tca_App: App {
    var body: some Scene {
        WindowGroup {
            CounterView(store: .init(initialState: .init(), reducer: CounterReducer()))
        }
    }
}
