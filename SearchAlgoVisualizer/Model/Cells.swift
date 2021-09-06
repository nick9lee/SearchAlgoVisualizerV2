//
//  Cells.swift
//  SearchAlgoVisualizer
//
//  Created by Nicholas Lee on 2020-11-14.
//

import Foundation
import UIKit

class Cells{

    //cell values and there meaning
    let path = 0
    let wall = 1
    static var startrow = -1
    static var startcol = -1
    static var endrow = -1
    static var endcol = -1
    
    static var visitedRow:[Int] = []
    static var visitedCol:[Int] = []
    
    static var pathRow:[Int] = []
    static var pathCol:[Int] = []
    
    //this represents the cell grid on screen
    //edge is when row out of bounds or column out of bounds
    static var cellArray = [
        [0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0]
    ]
    
    init(){
        
    }
    
    static func resetArray(){
        cellArray = [
            [0,0,0,0,0,0,0,0,0,0,0],
            [0,0,0,0,0,0,0,0,0,0,0],
            [0,0,0,0,0,0,0,0,0,0,0],
            [0,0,0,0,0,0,0,0,0,0,0],
            [0,0,0,0,0,0,0,0,0,0,0],
            [0,0,0,0,0,0,0,0,0,0,0],
            [0,0,0,0,0,0,0,0,0,0,0],
            [0,0,0,0,0,0,0,0,0,0,0],
            [0,0,0,0,0,0,0,0,0,0,0],
            [0,0,0,0,0,0,0,0,0,0,0],
            [0,0,0,0,0,0,0,0,0,0,0],
            [0,0,0,0,0,0,0,0,0,0,0],
            [0,0,0,0,0,0,0,0,0,0,0],
            [0,0,0,0,0,0,0,0,0,0,0],
            [0,0,0,0,0,0,0,0,0,0,0],
            [0,0,0,0,0,0,0,0,0,0,0]
        ]
    }
    
    static func setStart(row: Int, col: Int){
        startrow = row
        startcol = col
        cellArray[row][col] = 0
    }
    
    static func setEnd(row: Int, col: Int){
        endrow = row
        endcol = col
        cellArray[row][col] = 0
    }
    
    static func setBarrier(row: Int, col: Int){
        cellArray[row][col] = 1
    }
    
    static func setPath(row: Int, col: Int){
        cellArray[row][col] = 0
    }
    
    static func printCells(){
        for array in cellArray {
            for x in array {
                print(x,terminator:"")
            }
            print("\n")
        }
    }
    
    static func getVisitedRow() -> [Int]{
        return visitedRow
    }
    
    static func getVisistedCol() -> [Int]{
        return visitedCol
    }
    
    static func getPathRow() -> [Int]{
        return pathRow
    }
    
    static func getPathCol() -> [Int]{
        return pathCol
    }
    
    static func clearPaths(){
        visitedRow = []
        visitedCol = []
        pathRow = []
        pathCol = []
    }
    
    static func dfs() -> Bool{
        
        var visitedNodes = Set<String>()
        var parentMap: [String: [Int]] = [:]
        
        var stackRow = [startrow]
        var stackCol = [startcol]
        
        var row: Int
        var col: Int
        var key: String
        
        while !stackRow.isEmpty {
            row = stackRow.removeLast()
            col = stackCol.removeLast()
            
            if row == endrow && col == endcol {
                var word: String
                word = String(row) + " " + String(col)
                while true {
                    if parentMap[word] != nil && (parentMap[word]![0] != startrow || parentMap[word]![1] != startcol) {
                        pathRow.append(parentMap[word]![0])
                        pathCol.append(parentMap[word]![1])
                        word = String(parentMap[word]![0]) + " " + String(parentMap[word]![1])
                    } else {
                        break
                    }
                }
                return true
            }
            
            key = String(row) + " " + String(col)
            
            if visitedNodes.contains(key) {
                continue
            }
            
            if row != startrow || col != startcol {
                visitedRow.append(row)
                visitedCol.append(col)
            }
            visitedNodes.insert(key)
            
            //check left
            if col > 0{
                key = String(row) + " " + String(col - 1)
                if cellArray[row][col - 1] != 1 && !visitedNodes.contains(key){
                    stackRow.append(row)
                    stackCol.append(col - 1)
                    parentMap[key] = [row, col]
                }
            }
            
            //check down
            if row < 15 {
                key = String(row + 1) + " " + String(col)
                if cellArray[row + 1][col] != 1 && !visitedNodes.contains(key) {
                    stackRow.append(row + 1)
                    stackCol.append(col)
                    parentMap[key] = [row, col]
                }
            }
            
            //check right
            if col < 10 {
                key = String(row) + " " + String(col + 1)
                if cellArray[row][col + 1] != 1 && !visitedNodes.contains(key){
                    stackRow.append(row)
                    stackCol.append(col + 1)
                    parentMap[key] = [row, col]
                }
            }
            
            //check up
            if row > 0 {
                key = String(row - 1) + " " + String(col)
                if cellArray[row - 1][col] != 1 && !visitedNodes.contains(key){
                    stackRow.append(row - 1)
                    stackCol.append(col)
                    parentMap[key] = [row, col]
                }
            }
        }
        return false;
    }
    
    static func bfs() -> Bool {
        
        var visitedNodes = Set<String>()
        var parentMap: [String: [Int]] = [:]
        
        var queueRow = [startrow]
        var queueCol = [startcol]
        
        var row: Int
        var col: Int
        var key: String
        
        while !queueRow.isEmpty {
            row = queueRow.removeFirst()
            col = queueCol.removeFirst()
            
            if row == endrow && col == endcol {
                var word: String
                word = String(row) + " " + String(col)
                while true {
                    if parentMap[word] != nil && (parentMap[word]![0] != startrow || parentMap[word]![1] != startcol) {
                        pathRow.append(parentMap[word]![0])
                        pathCol.append(parentMap[word]![1])
                        word = String(parentMap[word]![0]) + " " + String(parentMap[word]![1])
                    } else {
                        break
                    }
                }
                return true
            }
            
            key = String(row) + " " + String(col)
            
            if visitedNodes.contains(key) {
                continue
            }
            
            if row != startrow || col != startcol {
                visitedRow.append(row)
                visitedCol.append(col)
            }
            visitedNodes.insert(key)
            
            //check left
            if col > 0{
                key = String(row) + " " + String(col - 1)
                if cellArray[row][col - 1] != 1 && !visitedNodes.contains(key){
                    queueRow.append(row)
                    queueCol.append(col - 1)
                    parentMap[key] = [row, col]
                }
            }
            
            //check down
            if row < 15 {
                key = String(row + 1) + " " + String(col)
                if cellArray[row + 1][col] != 1 && !visitedNodes.contains(key) {
                    queueRow.append(row + 1)
                    queueCol.append(col)
                    parentMap[key] = [row, col]
                }
            }
            
            //check right
            if col < 10 {
                key = String(row) + " " + String(col + 1)
                if cellArray[row][col + 1] != 1 && !visitedNodes.contains(key){
                    queueRow.append(row)
                    queueCol.append(col + 1)
                    parentMap[key] = [row, col]
                }
            }
            
            //check up
            if row > 0 {
                key = String(row - 1) + " " + String(col)
                if cellArray[row - 1][col] != 1 && !visitedNodes.contains(key){
                    queueRow.append(row - 1)
                    queueCol.append(col)
                    parentMap[key] = [row, col]
                }
            }
        }
        return false;
    }
    
    static func AStar() -> Bool{

        let finalPath = aStarAlgorithm(startRow: startrow, startCol: startcol, endRow: endrow, endCol: endcol, graph: cellArray)

        if finalPath.count == 0 {
            return false
        }

        for x in finalPath {
            if (x[0] != startrow || x[1] != startcol) && (x[0] != endrow || x[1] != endcol){
                pathRow.append(x[0])
                pathCol.append(x[1])
            }
        }
        
        // testing heap

//        var array: [Node] = []
//        let node = Node(therow: 1, thecol: 1, thevalue: 0)
//        node.estimatedDistanceToEnd = 1
//        array.append(node)
//        var minHeap = MinHeap(array: array)
//
//        let node1 = Node(therow: 1, thecol: 1, thevalue: 1)
//        node1.estimatedDistanceToEnd = 1
//        let node2 = Node(therow: 1, thecol: 1, thevalue: 2)
//        node2.estimatedDistanceToEnd = 1
//        let node3 = Node(therow: 1, thecol: 1, thevalue: 3)
//        node3.estimatedDistanceToEnd = 4
//        let node4 = Node(therow: 1, thecol: 1, thevalue: 4)
//        node4.estimatedDistanceToEnd = 5
//
//        minHeap.insert(node: node1)
//        minHeap.insert(node: node2)
//        minHeap.insert(node: node3)
//        minHeap.insert(node: node4)
//
//        print(minHeap.remove()!.estimatedDistanceToEnd)
//        print(minHeap.remove()!.estimatedDistanceToEnd)
//        print(minHeap.remove()!.estimatedDistanceToEnd)
//        print(minHeap.remove()!.estimatedDistanceToEnd)
//        print(minHeap.remove()!.estimatedDistanceToEnd)
        
        return true
    }
    
    static func aStarAlgorithm(startRow: Int, startCol: Int, endRow: Int, endCol: Int, graph: [[Int]]) -> [[Int]]{
        
        let nodes = initializeNodes(graph: graph)
        let startNode = nodes[startRow][startCol]
        let endNode = nodes[endRow][endCol]
        
        startNode.distanceFromStart = 0
        startNode.estimatedDistanceToEnd = calculateManhattanDistance(currentNode: startNode, endNode: endNode)
        
        var nodesToVisitList: [Node] = []
        nodesToVisitList.append(startNode)
        
        let nodesToVisit = MinHeap(array: nodesToVisitList)
        
        while !nodesToVisit.isEmpty() {
            let currentMinDistanceNode = nodesToVisit.remove()
            
            if (currentMinDistanceNode!.row != startrow || currentMinDistanceNode!.col != startcol) && (currentMinDistanceNode!.row != endrow || currentMinDistanceNode!.col != endcol){
                visitedRow.append(currentMinDistanceNode!.row)
                visitedCol.append(currentMinDistanceNode!.col)
            }
            
            if currentMinDistanceNode!.row == endNode.row && currentMinDistanceNode!.col == endNode.col {
                break
            }
            
            let neighbors = getNeighboringNodes(node: currentMinDistanceNode!, nodes: nodes)
            
            for neighbor in neighbors {
                if neighbor.value == 1 {
                    continue
                }
                
                let tentativeDistanceToNeighbor = currentMinDistanceNode!.distanceFromStart + 1
                
                if tentativeDistanceToNeighbor >= neighbor.distanceFromStart {
                    continue
                }
                
                neighbor.cameFrom = currentMinDistanceNode
                neighbor.distanceFromStart = tentativeDistanceToNeighbor
                neighbor.estimatedDistanceToEnd = tentativeDistanceToNeighbor + calculateManhattanDistance(currentNode: neighbor, endNode: endNode)
                
                if !nodesToVisit.containsNode(node: neighbor) {
                    nodesToVisit.insert(node: neighbor)
                } else {
                    nodesToVisit.update(node: neighbor)
                }
            }
        }
        return reconstructPath(endNode: endNode)
    }
    
    static func initializeNodes(graph: [[Int]]) -> [[Node]] {
        var nodes: [[Node]] = []
        
        for i in 0...graph.count - 1 {
            let nodeList: [Node] = []
            nodes.append(nodeList)
            for j in 0...graph[i].count - 1 {
                nodes[i].append(Node(therow: i, thecol: j, thevalue: graph[i][j]))
            }
        }
        
        return nodes
    }
    
    static func calculateManhattanDistance(currentNode: Node, endNode: Node) -> Int {
        let currentRow = currentNode.row
        let currentCol = currentNode.col
        let endRow = endNode.row
        let endCol = endNode.col
        
        return abs(currentRow - endRow) + abs(currentCol - endCol)
    }
    
    static func getNeighboringNodes(node: Node, nodes: [[Node]]) -> [Node] {
        var neighbors: [Node] = []
        
        let numRows = nodes.count
        let numCols = nodes[0].count
        
        let row = node.row
        let col = node.col
        
        if row < numRows - 1 {          //down
            neighbors.append(nodes[row + 1][col])
        }
        
        if row > 0 {    //up
            neighbors.append(nodes[row - 1][col])
        }
        
        if col < numCols - 1 {      //right
            neighbors.append(nodes[row][col + 1])
        }
        
        if col > 0 {        //left
            neighbors.append(nodes[row][col - 1])
        }
        
        return neighbors
    }
    
    static func reconstructPath(endNode: Node) -> [[Int]] {
        if endNode.cameFrom == nil {
            return []
        }
        
        var currentNode: Node?
        currentNode = endNode
        
        var path: [[Int]] = []
        
        while currentNode != nil {
            var nodeData: [Int] = []
            nodeData.append(currentNode!.row)
            nodeData.append(currentNode!.col)
            path.append(nodeData)
            currentNode = currentNode?.cameFrom
        }
        return path
    }
    
    
    static func runPressed(algoId: Int) -> Bool{
        clearPaths()
        var targetFound = false
        
        switch(algoId){
        case(0):
            targetFound = dfs()
            break
        case(1):
            targetFound = bfs()
            break
        case(2):
            return false
        case(3):
            targetFound = AStar()
            break
        case(_):
            return false
        }
        return targetFound
    }
    
}
