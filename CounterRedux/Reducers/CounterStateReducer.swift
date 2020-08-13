//
//  CounterStateReducer.swift
//  CounterRedux
//
//  Created by Meidiana Monica on 13/08/20.
//  Copyright © 2020 Meidiana Monica. All rights reserved.
//

import Foundation
import ReSwift
import SwiftUI

let CounterStateReducer: Reducer<CounterState> = { old, action in
    
    if let action = action as? CounterAction {
        switch action {
        case .increment:
            return CounterState(count: old.count + 1)
        case .decrement:
            return CounterState(count: old.count - 1)
        }
    }
    
    return old
}

//func testCounterReducerToReturnIncrementedCounterState() {
//  // given
//  let old = CounterState(count: 5)
//  let action = CounterAction.increment
//
//  // when
//  let new = CounterStateReducer(old, action)
//
//  // then
//  XCTAssertEqual(CounterState(count: 6), new)
//}

// similar for all other actions ...
