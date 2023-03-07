//
//  DataStructureAndAlgorithmsTests.swift
//  DataStructureAndAlgorithmsTests
//
//  Created by Tony Mu on 16/02/23.
//

import XCTest
@testable import DataStructureAndAlgorithms

final class DataStructureAndAlgorithmsTests: XCTestCase {


    func testLinkList() throws {
        var linkList = LinkedList<Int>()
        linkList.append(10)
        linkList.append(3)
        linkList.append(12)
        
        print(linkList)
        
        // inser node
        let middleNode = linkList.node(at: 1)!
        linkList.insert(999, after: middleNode)
        
        print(linkList)
        
        // pop
        _ = linkList.pop()
        
        print(linkList)
        
        // removeLast
        _ = linkList.removeLast()
        print(linkList)
        
        
        // remove
        linkList.push(1)
        linkList.push(2)
        
        print("Before remove - \(linkList)")
        _ = linkList.remove(after: linkList.node(at: 1)!)
        print("After remove - \(linkList)")
    }
    
    func testStack() throws {
        var stack = Stack<Int>()
        stack.push(20)
        stack.push(10)
        stack.push(3)
        
        print("before popping")
        print(stack)
        
        print("after popping")
        _ = stack.pop()
        print(stack)
    }
    
    func testQueue() throws {
        var queue = Queue<Int>()
        queue.enqueue(20)
        queue.enqueue(10)
        queue.enqueue(3)
        
        print("before dequeue")
        print(queue)
        
        print("after dequeue")
        _ = queue.dequeue()
        print(queue)
    }
    
    func testTree() {
        let beverages = TreeNote("Reverages")

        let hot = TreeNote("Hot")
        let cold = TreeNote("Cold")
        
        let tea = TreeNote("Tea")
        let coffee = TreeNote("Coffee")
        
        hot.add(tea)
        hot.add(coffee)
  
        
        let soda = TreeNote("Soda")
        let milk = TreeNote("Milk")
        
        cold.add(soda)
        cold.add(milk)
        
        beverages.add(hot)
        beverages.add(cold)
        
        
        /*
            Beverages
            /      \
            /       \
           hot        cold
         /     \        /   \
        tea   coffee  soda milk
        */
        
        beverages.forEachDepthFirst {
            print($0.value)
        }
        
        print("For each level order \n\n")
        beverages.forEachLevelOrder {
            print($0.value)
        }
        
        print("\nSearch: \n")
        if let result = beverages.search("Soda") {
            print(result.value)
        }
    }

    func testBinaryTree() {
        
        /*
                        10
                   /          \
                 9              2
              /    \         /     \
             1       3       4       6
         */

        let ten = BinaryNode(10)
        let nine = BinaryNode(9)
        let two = BinaryNode(2) 
        let one = BinaryNode(1)
        let three = BinaryNode(3)
        let four = BinaryNode(4)
        let six = BinaryNode(6)
        
        ten.leftChild = nine
        ten.rightChild = two
        
        nine.leftChild = one
        nine.rightChild = three
        
        two.leftChild = four
        two.rightChild = six
        
        ten.traverseInOrder {
            print($0)
        }
        print("Post Order")
        ten.traversePostOrder{
            print($0)
        }
        
        print("Pre Order")
        ten.traversePreOrder{
            print($0)
        }
    }
    
//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
