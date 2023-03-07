//
//  Queues.swift
//  DataStructureAndAlgorithms
//
//  Created by Tony Mu on 25/02/23.
//

import Foundation

// First in first out
struct Queue<Element> {
    private var storage = [Element]()
    
    var isEmpty: Bool {
        return storage.isEmpty
    }
    
    var peek: Element? {
        return storage.first
    }
    
    mutating func enqueue(_ value: Element) {
        storage.append(value)
    }
    
    mutating func dequeue() -> Element? {
        guard !isEmpty else { return nil }
        return storage.removeFirst()
    }
}

extension Queue: CustomStringConvertible {
    var description: String {
        String(describing: storage)
    }
}


