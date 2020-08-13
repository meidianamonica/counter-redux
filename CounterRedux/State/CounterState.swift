//
//  CounterState.swift
//  CounterRedux
//
//  Created by Meidiana Monica on 13/08/20.
//  Copyright © 2020 Meidiana Monica. All rights reserved.
//

import Foundation
import ReSwift

struct CounterState: ReduxState, Equatable {
    var count: Int
}
