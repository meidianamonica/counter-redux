//
//  DefaultStore.swift
//  CounterRedux
//
//  Created by Meidiana Monica on 13/08/20.
//  Copyright © 2020 Meidiana Monica. All rights reserved.
//

import Foundation
import ReSwift
import SwiftUI
import Combine

protocol Action {}
protocol ReduxState {}

typealias Reducer <S: ReduxState> = (S, Action) -> S

protocol Store: ObservableObject {
    associatedtype S: ReduxState
    
    var reducer: Reducer<S> { get }
    
    func dispatch(action: Action)
    func getCurrent() -> S
}

class DefaultStore <S: ReduxState>: Store {
    
    var willChange = PassthroughSubject<Void, Never>()
    
    private var state: S {
        didSet {
            willChange.send()
        }
    }
        
    let reducer: Reducer<S>
    
    init(reducer: @escaping Reducer<S>,
         initialState state: S) {
        self.reducer = reducer
        self.state = state
    }
    
    func dispatch(action: Action) {
        state = reducer(state, action)
    }
        
    func getCurrent() -> S {
        return state
    }
}
