//
//  MinHeap.swift
//  SearchAlgoVisualizer
//
//  Created by Nicholas Lee on 2021-07-25.
//

import Foundation

class MinHeap {
    var heap = [Node]()
    var nodePositionsInHeap = [String : Int]()
    
    init(array : [Node]){
        for (i,node) in array.enumerated() {
            nodePositionsInHeap[node.id] = i
        }
        heap = buildHeap(array: array)
    }
    
    func buildHeap(array: [Node]) -> [Node]{
        var firstParentIdx = (Int)((array.count - 2) / 2)
        var currentIdx = firstParentIdx + 1
        
        while currentIdx >= 0 {
            currentIdx -= 1
            //missing func call here
        }
        
        return array
    }
}
