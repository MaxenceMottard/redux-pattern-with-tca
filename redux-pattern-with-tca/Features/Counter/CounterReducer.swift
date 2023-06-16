//
//  CounterReducer.swift
//  redux-pattern-with-tca
//
//  Created by Maxence Mottard on 16/06/2023.
//

import Foundation
import ComposableArchitecture

struct CounterReducer: ReducerProtocol {
    struct State: Equatable {
        var counter: Int = 0
    }

    enum Action {
        case increment
        case decrement
    }

    var body: some ReducerProtocol<State, Action> {
        Reduce { state, action in
            switch action {
            case .increment:
                state.counter += 1

            case .decrement:
                state.counter -= 1
            }

            return .none
        }
    }

//    func reduce(into state: inout State, action: Action) -> EffectTask<Action> {
//        switch action {
//        case .increment:
//            state.counter += 1
//
//        case .decrement:
//            state.counter -= 1
//        }
//
//        return .none
//    }
}
