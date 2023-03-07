//
//  Stack.swift
//  DataStructureAndAlgorithms
//
//  Created by Tony Mu on 25/02/23.
//

import Foundation

// LIFO : Last in first out
struct Stack<Element> {
    private var storage = [Element]()
    
    mutating func push(_ value: Element) {
        storage.append(value)
    }
    
    mutating func pop() -> Element?  {
        storage.popLast()
    }
}

extension Stack: CustomStringConvertible {
    var description: String {
        let topDivider = "-------Top-------\n"
        let bottomDivider = "\n-------------"
        
        let elements = storage.map { "\($0)"}.reversed().joined(separator: "\n")
        return topDivider + elements + bottomDivider
    }
}
