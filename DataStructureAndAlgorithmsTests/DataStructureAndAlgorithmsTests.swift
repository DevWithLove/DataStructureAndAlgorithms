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

//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
