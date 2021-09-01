//
//  MinHeap.swift
//  SearchAlgoVisualizer
//
//  Created by Nicholas Lee on 2021-07-25.
//

import Foundation

class MinHeap {
    var heap: [Int]
    var nodePositionsInHeap: [String: Int]
    
    init(array: [Node]) {
        heap = []
        nodePositionsInHeap = [:]
        
        var i = 0
        for x in array {
            nodePositionsInHeap[x.id] = i
            i += 1
        }
        //heap = buildHeap(array);
    }
    
    public func buildHeap(array: [Node]) -> [Node] {
        let firstParentIdx: Int = (array.count - 2) / 2
        
        var currentIdx = firstParentIdx + 1
        
        while currentIdx >= 0 {
            // array = siftDown(curretnIdx, array.count - 1, array)
            currentIdx -= 1
        }
        
        return array
    }
    
    public func isEmpty() -> Bool{
        return heap.isEmpty
    }
    
    public func siftDown(currentIdx: Int, endIdx: Int, array: [Node]) -> [Node]{
        
        
        return array
    }
}
