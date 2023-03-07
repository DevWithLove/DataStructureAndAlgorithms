//
//  Recursion.swift
//  DataStructureAndAlgorithms
//
//  Created by Tony Mu on 25/02/23.
//

/**
 Recurisive function contain two cases:
 - Base case - breaking the recursion
 - Recursive case - which calls the function recursively
 */

import Foundation

// 5: 5*4*3*2*1
func factorial(number :Int) -> Int {
    // base case
    if number == 0 {
        return 1
    }
    
    // Recursive case
    return number * factorial(number: number - 1)
}

// 2^3 = 2 * 2 * 2 = 8

func power(number: Int, n: Int) -> Int {
    
    // base case
    if n == 0 {
        return 1
    }
    
    // Recusive cases
    return number * power(number: number, n: n - 1 )
}
