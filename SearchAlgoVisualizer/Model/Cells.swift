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
    
    
    static func runPressed(algoId: Int) -> Bool{
        clearPaths()
        var targetFound = false
        
        switch(algoId){
        case(0):
            targetFound = dfs()
            break
        case(1):
            targetFound = bfs()
        case(_):
            return false
        }
        
        return targetFound
    }
    
}
