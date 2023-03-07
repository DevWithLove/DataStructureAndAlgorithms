//
//  BinaryTree.swift
//  DataStructureAndAlgorithms
//
//  Created by Tony Mu on 7/03/23.
//

import Foundation

class BinaryNode<Element> {
    var value: Element
    var leftChild: BinaryNode?
    var rightChild: BinaryNode?
    
    init(_ value: Element, leftChild: BinaryNode? = nil, rightChild: BinaryNode? = nil) {
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}

/*
                10
           /          \
         9              2
      /    \         /     \
     1       3       4       6
 
 traverseInOrder: most left first,
 print:
 1 9 3 10 4 2 6
 
 traversePostOrder: left and right node first
 print 
1 3 9 4 6 2 10
 
 traversePreOrder: note self first
 print
 10 9 1 3 2 4 6 
 */

// Binary tree cannot have more than 2 node

extension BinaryNode {
    func traverseInOrder(visit: (Element) -> Void) {
        leftChild?.traverseInOrder(visit: visit)
        visit(value)
        rightChild?.traverseInOrder(visit: visit)
    }
    
    func traversePreOrder(visit: (Element) -> Void) {
        visit(value)
        leftChild?.traversePreOrder(visit: visit)
        rightChild?.traversePreOrder(visit: visit)
    }
    
    
    func traversePostOrder(visit: (Element) -> Void) {
        leftChild?.traversePostOrder(visit: visit)
        rightChild?.traversePostOrder(visit: visit)
        visit(value)
    }
}



