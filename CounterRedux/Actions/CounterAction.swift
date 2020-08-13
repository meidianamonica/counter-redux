//
//  Actions.swift
//  CounterRedux
//
//  Created by Meidiana Monica on 13/08/20.
//  Copyright © 2020 Meidiana Monica. All rights reserved.
//

import Foundation
import ReSwift

//struct CounterActionIncrease: Action {}
//struct CounterActionDecrease: Action {}

enum CounterAction: Action {
    case increment
    case decrement
}
