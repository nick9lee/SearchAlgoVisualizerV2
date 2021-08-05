//
//  ViewController.swift
//  SearchAlgoVisualizer
//
//  Created by Nicholas Lee on 2020-10-12.
//

import UIKit



class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    static let numberOfCols = 11
    static let numberOfRows = 16
    static let searchAlgos = ["Dijkstra", "BFS", "DFS", "A*"]
    static var chosenSearchAlgo = searchAlgos[0]
    static var cells = Cells()
    
    var startfound = false
    var endfound = false
    
    //button states start ------------------------------------------
    //row0
    var state00 = ButtonState()
    var state01 = ButtonState()
    var state02 = ButtonState()
    var state03 = ButtonState()
    var state04 = ButtonState()
    var state05 = ButtonState()
    var state06 = ButtonState()
    var state07 = ButtonState()
    var state08 = ButtonState()
    var state09 = ButtonState()
    var state010 = ButtonState()
    
    //row1
    var state10 = ButtonState()
    var state11 = ButtonState()
    var state12 = ButtonState()
    var state13 = ButtonState()
    var state14 = ButtonState()
    var state15 = ButtonState()
    var state16 = ButtonState()
    var state17 = ButtonState()
    var state18 = ButtonState()
    var state19 = ButtonState()
    var state110 = ButtonState()
    
    //row2
    var state20 = ButtonState()
    var state21 = ButtonState()
    var state22 = ButtonState()
    var state23 = ButtonState()
    var state24 = ButtonState()
    var state25 = ButtonState()
    var state26 = ButtonState()
    var state27 = ButtonState()
    var state28 = ButtonState()
    var state29 = ButtonState()
    var state210 = ButtonState()
    
    //row3
    var state30 = ButtonState()
    var state31 = ButtonState()
    var state32 = ButtonState()
    var state33 = ButtonState()
    var state34 = ButtonState()
    var state35 = ButtonState()
    var state36 = ButtonState()
    var state37 = ButtonState()
    var state38 = ButtonState()
    var state39 = ButtonState()
    var state310 = ButtonState()
    
    //button states end ------------------------------------------

    //other user interface elements-------------
    @IBOutlet weak var ResetButton: UIButton!
    @IBOutlet weak var RunButton: UIButton!
    @IBOutlet weak var AlgoPicker: UITextField!
    @IBOutlet weak var instructionLabel: UILabel!
    
    //cell buttons start------------------------------
    //row0
    @IBOutlet weak var Button00: UIButton!
    @IBOutlet weak var Button01: UIButton!
    @IBOutlet weak var Button02: UIButton!
    @IBOutlet weak var Button03: UIButton!
    @IBOutlet weak var Button04: UIButton!
    @IBOutlet weak var Button05: UIButton!
    @IBOutlet weak var Button06: UIButton!
    @IBOutlet weak var Button07: UIButton!
    @IBOutlet weak var Button08: UIButton!
    @IBOutlet weak var Button09: UIButton!
    @IBOutlet weak var Button010: UIButton!
    
    //row1
    @IBOutlet weak var Button10: UIButton!
    @IBOutlet weak var Button11: UIButton!
    @IBOutlet weak var Button12: UIButton!
    @IBOutlet weak var Button13: UIButton!
    @IBOutlet weak var Button14: UIButton!
    @IBOutlet weak var Button15: UIButton!
    @IBOutlet weak var Button16: UIButton!
    @IBOutlet weak var Button17: UIButton!
    @IBOutlet weak var Button18: UIButton!
    @IBOutlet weak var Button19: UIButton!
    @IBOutlet weak var Button110: UIButton!
    
    //row2
    @IBOutlet weak var Button20: UIButton!
    @IBOutlet weak var Button21: UIButton!
    @IBOutlet weak var Button22: UIButton!
    @IBOutlet weak var Button23: UIButton!
    @IBOutlet weak var Button24: UIButton!
    @IBOutlet weak var Button25: UIButton!
    @IBOutlet weak var Button26: UIButton!
    @IBOutlet weak var Button27: UIButton!
    @IBOutlet weak var Button28: UIButton!
    @IBOutlet weak var Button29: UIButton!
    @IBOutlet weak var Button210: UIButton!
    
    //row3
    @IBOutlet weak var Button30: UIButton!
    @IBOutlet weak var Button31: UIButton!
    @IBOutlet weak var Button32: UIButton!
    @IBOutlet weak var Button33: UIButton!
    @IBOutlet weak var Button34: UIButton!
    @IBOutlet weak var Button35: UIButton!
    @IBOutlet weak var Button36: UIButton!
    @IBOutlet weak var Button37: UIButton!
    @IBOutlet weak var Button38: UIButton!
    @IBOutlet weak var Button39: UIButton!
    @IBOutlet weak var Button310: UIButton!
    
    
    //cell buttons end------------------------------
    
    var pickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        AlgoPicker.inputView = pickerView
        pickerView.delegate = self
        pickerView.dataSource = self
        AlgoPicker.textAlignment = .center

    }
    
    func buttonInit(){
        
    }
    
    //action buttons
    @IBAction func resetPressed(_ sender: Any) {
        startfound = false
        endfound = false
        
        //reseting states of all buttons ------------
        //row0
        state00.resetState()
        state01.resetState()
        state02.resetState()
        state03.resetState()
        state04.resetState()
        state05.resetState()
        state06.resetState()
        state07.resetState()
        state08.resetState()
        state09.resetState()
        state010.resetState()
        
        //row1
        state10.resetState()
        state11.resetState()
        state12.resetState()
        state13.resetState()
        state14.resetState()
        state15.resetState()
        state16.resetState()
        state17.resetState()
        state18.resetState()
        state19.resetState()
        state110.resetState()
        
        //row2
        state20.resetState()
        state21.resetState()
        state22.resetState()
        state23.resetState()
        state24.resetState()
        state25.resetState()
        state26.resetState()
        state27.resetState()
        state28.resetState()
        state29.resetState()
        state210.resetState()
        
        //row3
        state30.resetState()
        state31.resetState()
        state32.resetState()
        state33.resetState()
        state34.resetState()
        state35.resetState()
        state36.resetState()
        state37.resetState()
        state38.resetState()
        state39.resetState()
        state310.resetState()
        
        //reseting all cell colors ----------------
        //row0
        Button00.backgroundColor = UIColor(named: "defaultTileColor")
        Button01.backgroundColor = UIColor(named: "defaultTileColor")
        Button02.backgroundColor = UIColor(named: "defaultTileColor")
        Button03.backgroundColor = UIColor(named: "defaultTileColor")
        Button04.backgroundColor = UIColor(named: "defaultTileColor")
        Button05.backgroundColor = UIColor(named: "defaultTileColor")
        Button06.backgroundColor = UIColor(named: "defaultTileColor")
        Button07.backgroundColor = UIColor(named: "defaultTileColor")
        Button08.backgroundColor = UIColor(named: "defaultTileColor")
        Button09.backgroundColor = UIColor(named: "defaultTileColor")
        Button010.backgroundColor = UIColor(named: "defaultTileColor")
        
        //row1
        Button10.backgroundColor = UIColor(named: "defaultTileColor")
        Button11.backgroundColor = UIColor(named: "defaultTileColor")
        Button12.backgroundColor = UIColor(named: "defaultTileColor")
        Button13.backgroundColor = UIColor(named: "defaultTileColor")
        Button14.backgroundColor = UIColor(named: "defaultTileColor")
        Button15.backgroundColor = UIColor(named: "defaultTileColor")
        Button16.backgroundColor = UIColor(named: "defaultTileColor")
        Button17.backgroundColor = UIColor(named: "defaultTileColor")
        Button18.backgroundColor = UIColor(named: "defaultTileColor")
        Button19.backgroundColor = UIColor(named: "defaultTileColor")
        Button110.backgroundColor = UIColor(named: "defaultTileColor")
        
        //row2
        Button20.backgroundColor = UIColor(named: "defaultTileColor")
        Button21.backgroundColor = UIColor(named: "defaultTileColor")
        Button22.backgroundColor = UIColor(named: "defaultTileColor")
        Button23.backgroundColor = UIColor(named: "defaultTileColor")
        Button24.backgroundColor = UIColor(named: "defaultTileColor")
        Button25.backgroundColor = UIColor(named: "defaultTileColor")
        Button26.backgroundColor = UIColor(named: "defaultTileColor")
        Button27.backgroundColor = UIColor(named: "defaultTileColor")
        Button28.backgroundColor = UIColor(named: "defaultTileColor")
        Button29.backgroundColor = UIColor(named: "defaultTileColor")
        Button210.backgroundColor = UIColor(named: "defaultTileColor")
        
        //row3
        Button30.backgroundColor = UIColor(named: "defaultTileColor")
        Button31.backgroundColor = UIColor(named: "defaultTileColor")
        Button32.backgroundColor = UIColor(named: "defaultTileColor")
        Button33.backgroundColor = UIColor(named: "defaultTileColor")
        Button34.backgroundColor = UIColor(named: "defaultTileColor")
        Button35.backgroundColor = UIColor(named: "defaultTileColor")
        Button36.backgroundColor = UIColor(named: "defaultTileColor")
        Button37.backgroundColor = UIColor(named: "defaultTileColor")
        Button38.backgroundColor = UIColor(named: "defaultTileColor")
        Button39.backgroundColor = UIColor(named: "defaultTileColor")
        Button310.backgroundColor = UIColor(named: "defaultTileColor")
        
    }
    @IBAction func runPressed(_ sender: Any) {
        if(startfound == false){
            instructionLabel.text = "Select Start First"
        } else if(endfound == false){
            instructionLabel.text = "Select End First"
        } else{
            instructionLabel.text = ""
        }
    }
    
    //cell Button actions
    
    // - row 0 -------------------------------------------------------
    // - row 0 -------------------------------------------------------
    // - row 0 -------------------------------------------------------
    
    @IBAction func pressed00(_ sender: Any) {
        if(startfound == false || state00.isStart){
            Button00.backgroundColor = UIColor(named: "start")
            state00.makeStart()
            startfound = true;
            instructionLabel.text = "Select End"
        } else if(endfound == false || state00.isEnd){
            Button00.backgroundColor = UIColor(named: "finish")
            state00.makeEnd()
            endfound = true;
        } else if(state00.isPath == true){
            Button00.backgroundColor = UIColor(named: "barrier")
            state00.makeBarrier()
        } else if(state00.isBarrier == true){
            Button00.backgroundColor = UIColor(named: "defaultTileColor")
            state00.makePath()
        }
    }
    
    @IBAction func pressed01(_ sender: Any) {
        if(startfound == false || state01.isStart){
            Button01.backgroundColor = UIColor(named: "start")
            state01.makeStart()
            startfound = true;
            instructionLabel.text = "Select End"
        } else if(endfound == false || state01.isEnd){
            Button01.backgroundColor = UIColor(named: "finish")
            state01.makeEnd()
            endfound = true;
        } else if(state01.isPath == true){
            Button01.backgroundColor = UIColor(named: "barrier")
            state01.makeBarrier()
        } else if(state01.isBarrier == true){
            Button01.backgroundColor = UIColor(named: "defaultTileColor")
            state01.makePath()
        }
    }
    
    @IBAction func pressed02(_ sender: Any) {
        if(startfound == false || state02.isStart){
            Button02.backgroundColor = UIColor(named: "start")
            state02.makeStart()
            startfound = true;
            instructionLabel.text = "Select End"
        } else if(endfound == false || state02.isEnd){
            Button02.backgroundColor = UIColor(named: "finish")
            state02.makeEnd()
            endfound = true;
        } else if(state02.isPath == true){
            Button02.backgroundColor = UIColor(named: "barrier")
            state02.makeBarrier()
        } else if(state02.isBarrier == true){
            Button02.backgroundColor = UIColor(named: "defaultTileColor")
            state02.makePath()
        }
    }
    
    @IBAction func pressed03(_ sender: Any) {
        if(startfound == false || state03.isStart){
            Button03.backgroundColor = UIColor(named: "start")
            state03.makeStart()
            startfound = true;
            instructionLabel.text = "Select End"
        } else if(endfound == false || state03.isEnd){
            Button03.backgroundColor = UIColor(named: "finish")
            state03.makeEnd()
            endfound = true;
        } else if(state03.isPath == true){
            Button03.backgroundColor = UIColor(named: "barrier")
            state03.makeBarrier()
        } else if(state03.isBarrier == true){
            Button03.backgroundColor = UIColor(named: "defaultTileColor")
            state03.makePath()
        }
    }
    
    
    
    
    // - row 1 -------------------------------------------------------
    // - row 1 -------------------------------------------------------
    // - row 1 -------------------------------------------------------
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //portrait mode only stuff-----------------------------------------
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
       get {
          return .portrait
       }
    }
    
    //pickerView start Functions --------------------------------------
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return ViewController.searchAlgos.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ViewController.searchAlgos[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        AlgoPicker.text = ViewController.searchAlgos[row]
        ViewController.chosenSearchAlgo = AlgoPicker.text!  //text always in picker view so safe to unwrap
        AlgoPicker.resignFirstResponder()
    }
    //pickerView end Functions --------------------------------------

}

