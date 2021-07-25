//
//  buttonState.swift
//  SearchAlgoVisualizer
//
//  Created by Nicholas Lee on 2021-07-25.
//

import Foundation

struct ButtonState{
    var isBarrier = false
    var isStart = false
    var isPath = true
    var isEnd = false
    
    mutating func resetState(){
        isBarrier = false
        isStart = false
        isPath = true
        isEnd = false
    }
    
    mutating func makeStart(){
        makeAllFalse()
        isStart = true
    }
    
    mutating func makeEnd(){
        makeAllFalse()
        isEnd = true
    }
    
    mutating func makePath(){
        makeAllFalse()
        isPath = true
    }
    
    mutating func makeBarrier(){
        makeAllFalse()
        isBarrier = true;
    }
    
    mutating func makeAllFalse(){
        isBarrier = false
        isStart = false
        isPath = false
        isEnd = false
    }
}
