//
//  Box.swift
//  MVVM+Coordinator
//
//  Created by VA on 26/02/22.
//

import Foundation

class Box<T> {
    
    typealias Listener = ((T) -> Void)
    var listener: Listener?
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    init(_ value: T) {
        self.value = value
    }
    
    func bind(_ listener: Listener?) {
        self.listener = listener
        self.listener?(value)
    }
}
