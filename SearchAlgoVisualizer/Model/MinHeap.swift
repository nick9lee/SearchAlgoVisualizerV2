//
//  MinHeap.swift
//  SearchAlgoVisualizer
//
//  Created by Nicholas Lee on 2021-07-25.
//

import Foundation

class MinHeap {
    var heap: [Node]
    var nodePositionsInHeap: [String: Int]
    
    init(array: [Node]) {
        heap = []
        nodePositionsInHeap = [:]
        
        for i in 0...array.count - 1 {
            let node = array[i]
            nodePositionsInHeap[node.id] = i
        }

        heap = buildHeap(arraytemp: array)
    }
    
    public func buildHeap(arraytemp: [Node]) -> [Node] {
        var array = arraytemp
        let firstParentIdx: Int = (array.count - 2) / 2
        
        var currentIdx = firstParentIdx + 1
        
        while currentIdx >= 0 {
            array = siftDown(currentIdxTemp: currentIdx, endIdx: array.count - 1, arraytemp: array)
            currentIdx -= 1
        }
        
        return array
    }
    
    public func isEmpty() -> Bool{
        return heap.isEmpty
    }
    
    public func siftDown(currentIdxTemp: Int, endIdx: Int, arraytemp: [Node]) -> [Node]{
        
        var array = arraytemp
        var currentIdx = currentIdxTemp
        var childOneIdx = currentIdx * 2 + 1;
        
        while childOneIdx <= endIdx {
            let childTwoIdx = currentIdx * 2 + 2 <= endIdx ? currentIdx * 2 + 2 : -1
            
            var idxToSwap: Int
            
            if childTwoIdx != -1 && array[childTwoIdx].estimatedDistanceToEnd < array[childOneIdx].estimatedDistanceToEnd {
                idxToSwap = childTwoIdx
            } else {
                idxToSwap = childOneIdx
            }
            
            if array[idxToSwap].estimatedDistanceToEnd < array[currentIdx].estimatedDistanceToEnd {
                
                //swap(currentIdx, idxToSwap);
                nodePositionsInHeap[heap[currentIdx].id] = idxToSwap
                nodePositionsInHeap[heap[idxToSwap].id] = currentIdx
                let temp = array[currentIdx]
                array[currentIdx] = array[idxToSwap]
                array[idxToSwap] = temp
                
                currentIdx = idxToSwap
                childOneIdx = currentIdx * 2 + 1
            } else {
                return array
            }
        }
        return array
    }
    
    public func siftUp(currentIdxTemp: Int){
        var currentIdx = currentIdxTemp
        var parentIdx: Int = (currentIdx - 1) / 2
        
        while currentIdx > 0 && heap[currentIdx].estimatedDistanceToEnd < heap[parentIdx].estimatedDistanceToEnd {
            
            //swap (currentIdx, parent Idx)
            nodePositionsInHeap[heap[currentIdx].id] = parentIdx
            nodePositionsInHeap[heap[parentIdx].id] = currentIdx
            let temp = heap[currentIdx]
            heap[currentIdx] = heap[parentIdx]
            heap[parentIdx] = temp
            
            currentIdx = parentIdx
            parentIdx = (currentIdx - 1) / 2
        }
    }
    
    public func remove() -> Node?{
        if isEmpty() {
            return nil
        }
        
        //swap(0, heap.size() - 1)
        nodePositionsInHeap[heap[0].id] = heap.count - 1
        nodePositionsInHeap[heap[heap.count - 1].id] = 0
        let temp = heap[0]
        heap[0] = heap[heap.count - 1]
        heap[heap.count - 1] = temp
        
        let node = heap[heap.count - 1]
        heap.remove(at: heap.count - 1)
        nodePositionsInHeap.removeValue(forKey: node.id)
        heap = siftDown(currentIdxTemp: 0, endIdx: heap.count - 1, arraytemp: heap)
        
        return node
    }
    
    public func insert(node: Node) {
        heap.append(node)
        nodePositionsInHeap[node.id] = heap.count - 1
        siftUp(currentIdxTemp: heap.count - 1)
    }
    
    public func containsNode(node: Node) -> Bool {
        return nodePositionsInHeap[node.id] != nil
    }
    
    public func update(node: Node){
        if nodePositionsInHeap[node.id] != nil {
            siftUp(currentIdxTemp: nodePositionsInHeap[node.id]!)
        }
    }
}
