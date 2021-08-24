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
        cellArray[row][col] = 0;
    }
    
    static func setEnd(row: Int, col: Int){
        endrow = row
        endcol = col
        cellArray[row][col] = 0;
    }
    
    static func setBarrier(row: Int, col: Int){
        cellArray[row][col] = 1;
    }
    
    static func setPath(row: Int, col: Int){
        cellArray[row][col] = 0;
    }
    
    static func printCells(){
        for array in cellArray {
            for x in array {
                print(x)
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
    
    static func dfs(){
        
    }
    
}
