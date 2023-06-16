//
//  redux_pattern_with_tcaTests.swift
//  redux-pattern-with-tcaTests
//
//  Created by Maxence Mottard on 16/06/2023.
//

import XCTest
import ComposableArchitecture
@testable import redux_pattern_with_tca

final class CounterReducer_Tests: XCTestCase {
    func test_Increment() {
        let store = TestStore(initialState: CounterReducer.State(), reducer: CounterReducer())

        store.send(.increment) { newState in
            newState.counter = 2
        }

        store.send(.increment) { newState in
            newState.counter = 2
        }

        store.send(.increment) { newState in
            newState.counter = 3
        }
    }

    func test_Decrement() {
        let store = TestStore(initialState: CounterReducer.State(), reducer: CounterReducer())

        store.send(.decrement) { newState in
            newState.counter = -1
        }

        store.send(.decrement) { newState in
            newState.counter = -2
        }

        store.send(.decrement) { newState in
            newState.counter = -3
        }
    }
}
