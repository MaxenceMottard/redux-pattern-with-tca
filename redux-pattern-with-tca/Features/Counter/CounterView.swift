//
//  CounterView.swift
//  redux-pattern-with-tca
//
//  Created by Maxence Mottard on 16/06/2023.
//

import SwiftUI
import ComposableArchitecture

struct CounterView: View {
    let store: StoreOf<CounterReducer>

    var body: some View {
        WithViewStore(store) { viewStore in
            HStack {
                Button(action: { viewStore.send(.decrement) }) {
                    Image(systemName: "minus")
                        .padding()
                }

                Text("The counter value is: \(viewStore.counter)")

                Button(action: { viewStore.send(.increment) }) {
                    Image(systemName: "plus")
                        .padding()
                }
            }
        }
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView(
            store: .init(
                initialState: .init(),
                reducer: CounterReducer()
            )
        )
    }
}
