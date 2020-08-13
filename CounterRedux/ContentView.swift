//
//  ContentView.swift
//  CounterRedux
//
//  Created by Meidiana Monica on 13/08/20.
//  Copyright © 2020 Meidiana Monica. All rights reserved.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @ObservedObject var store: DefaultStore<CounterState>


    private var props: Int {
        return store.getCurrent().count
    }
    
    
    var body: some View {
        print("[ContentView] body props \(props)")
        return HStack {
            Button("-", action: {
                self.store.dispatch(action: CounterAction.decrement)
                
            })
            Text("Counter: \(props)")
            Button("+", action: {
                self.store.dispatch(action: CounterAction.increment)
            })
        }
    }
}
