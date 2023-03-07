//
//  Tree.swift
//  DataStructureAndAlgorithms
//
//  Created by Tony Mu on 27/02/23.
//

import Foundation

class TreeNote<T> {
    var value: T
    var children: [TreeNote] = []
    
    init(_ value: T) {
        self.value = value
    }
    
    func add(_ child: TreeNote) {
        self.children.append(child)
    }
}

extension TreeNote where T: Equatable {
    func forEachDepthFirst(_ visit: (TreeNote) -> Void) {
        visit(self)
        children.forEach { $0.forEachDepthFirst(visit) }
    }
    
    func forEachLevelOrder(_ visit: (TreeNote) -> Void) {
        visit(self)
        var queue = Queue<TreeNote>()
        children.forEach {
            queue.enqueue($0)
        }
        
        while let node = queue.dequeue() {
            visit(node)
            node.children.forEach { queue.enqueue($0) }
        }
    }
    
    func search(_ value: T) -> TreeNote? {
        var result: TreeNote?
        forEachLevelOrder { node in
            if node.value == value {
                result = node
            }
        }
        return result
    }
}
