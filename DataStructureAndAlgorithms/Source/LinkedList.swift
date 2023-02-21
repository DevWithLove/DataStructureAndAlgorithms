//
//  LinkedList.swift
//  DataStructureAndAlgorithms
//
//  Created by Tony Mu on 16/02/23.
//

import Foundation

struct LinkedList<Value> {
    var head :Node<Value>?
    var tail :Node<Value>?
    
    var isEmpty :Bool {
        return head == nil
    }
    
    /// Add note at front
    mutating func push(_ value: Value) {
        head = Node(value: value, next: head)
        if tail == nil {
            tail = head
        }
    }
    
    /// Add note at end
    mutating func append(_ value: Value) {
        guard !isEmpty else {
            push(value)
            return
        }
        let note = Node(value: value)
        tail?.next = note
        tail = note
    }
    
    /// Insert value after the given node
    mutating func insert(_ value: Value, after node: Node<Value>) {
        node.next = Node(value: value, next: node.next)
    }
    
    /// Remove and return the head value
    mutating func pop() -> Value? {
        defer {
            head = head?.next
            if isEmpty { tail = nil }
        }
        return head?.value
    }
    
    /// Remove and return the last value
    mutating func removeLast() -> Value? {
        guard let head = head else { return nil }
        
        guard head.next != nil else { return pop() }
        
        var prev = head
        var current = head
        while let next = current.next {
            prev = current
            current = next
        }
        
        prev.next = nil
        tail = prev
        
        return current.value
    }
    
    /// Remove and return the value after the given node
    mutating func remove(after node: Node<Value>) -> Value? {
        defer {
            if node.next  === tail {
                tail = node
            }
            
            node.next = node.next?.next
        }
        return node.next?.value
    }
    
    /// Get node by index
    func node(at index: Int) -> Node<Value>? {
        var currentIndex = 0
        var currentNode = head
        while(currentNode != nil && currentIndex < index) {
            currentNode = currentNode?.next
            currentIndex += 1
        }
        
        return currentNode
    }
    
    init() { }
}

extension LinkedList: CustomStringConvertible {
    var description: String {
        guard let head = head else {
            return "Empty list"
        }
        return String(describing: head)
    }
}

// let list = LinkedList<Int>()

class Node<Value> {
    var value: Value
    var next: Node?
    
    init(value :Value, next :Node? = nil) {
        self.value = value
        self.next = next
    }
}

extension Node : CustomStringConvertible {
    var description :String {
        guard let next = next else {
            return "\(value)"
        }
        return "\(value) -> " + String(describing: next) + " "
    }
}


//let node1 = Node(value: 1)
//let node2 = Node(value: 2)
//let node3 = Node(value: 3)
//
//node1.next = node2
//node2.next = node3
//
//print(node1)
