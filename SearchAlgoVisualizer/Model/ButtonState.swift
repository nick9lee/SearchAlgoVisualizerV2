//
//  buttonState.swift
//  SearchAlgoVisualizer
//
//  Created by Nicholas Lee on 2021-07-25.
//

import Foundation

class ButtonState{
    var isBarrier: Bool
    var isStart: Bool
    var isPath: Bool
    var isEnd: Bool
    
    init() {
        isBarrier = false
        isStart = false
        isPath = true
        isEnd = false
    }
    
    func resetState(){
        isBarrier = false
        isStart = false
        isPath = true
        isEnd = false
    }
    
    func makeStart(){
        makeAllFalse()
        isStart = true
    }
    
    func makeEnd(){
        makeAllFalse()
        isEnd = true
    }
    
    func makePath(){
        makeAllFalse()
        isPath = true
    }
    
    func makeBarrier(){
        makeAllFalse()
        isBarrier = true;
    }
    
    func makeAllFalse(){
        isBarrier = false
        isStart = false
        isPath = false
        isEnd = false
    }
}
