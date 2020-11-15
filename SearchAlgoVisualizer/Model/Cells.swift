//
//  Cells.swift
//  SearchAlgoVisualizer
//
//  Created by Nicholas Lee on 2020-11-14.
//

import Foundation

struct Cells{

    //cell values and there meaning
    let path = 0
    let start = 1
    let end = 2
    let beenThere = 10
    let partOfShortestPath = 20
    let wall = 100
    
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
    
    var targetFound = false;
    var startSelected = false;
    var endSelected = false;
    var impossiblePath = false;
    
    
    
    
}
