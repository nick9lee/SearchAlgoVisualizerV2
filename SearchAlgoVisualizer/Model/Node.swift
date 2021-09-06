//
//  Node.swift
//  SearchAlgoVisualizer
//
//  Created by Nicholas Lee on 2021-07-25.
//

import Foundation


class Node{
    var id: String
    var row: Int
    var col: Int
    var value: Int
    var distanceFromStart: Int
    var estimatedDistanceToEnd: Int
    var cameFrom: Node?
    
    init(therow: Int, thecol: Int, thevalue: Int) {
        row = therow
        col = thecol
        value = thevalue
        id = String(row) + "-" + String(col)
        distanceFromStart = Int.max
        estimatedDistanceToEnd = Int.max
        cameFrom = nil
    }
}
