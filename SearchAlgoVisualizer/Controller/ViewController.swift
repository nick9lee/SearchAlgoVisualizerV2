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
    
    //button states end ------------------------------------------

    //other user interface elements-------------
    @IBOutlet weak var ResetButton: UIButton!
    @IBOutlet weak var RunButton: UIButton!
    @IBOutlet weak var AlgoPicker: UITextField!
    @IBOutlet weak var instructionLabel: UILabel!
    
    //cell buttons start------------------------------
    //row1
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
    
    //row2
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
    
    
    //row3
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
        
        //reseting states of all buttons
        state00.resetState()
        state01.resetState()
        state02.resetState()
        state03.resetState()
        
        //reseting all cell colors
        Button00.backgroundColor = UIColor(named: "defaultTileColor")
        Button01.backgroundColor = UIColor(named: "defaultTileColor")
        Button02.backgroundColor = UIColor(named: "defaultTileColor")
        Button03.backgroundColor = UIColor(named: "defaultTileColor")
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

