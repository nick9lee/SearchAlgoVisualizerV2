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
    
    //row4
    var state40 = ButtonState()
    var state41 = ButtonState()
    var state42 = ButtonState()
    var state43 = ButtonState()
    var state44 = ButtonState()
    var state45 = ButtonState()
    var state46 = ButtonState()
    var state47 = ButtonState()
    var state48 = ButtonState()
    var state49 = ButtonState()
    var state410 = ButtonState()
    
    //row5
    var state50 = ButtonState()
    var state51 = ButtonState()
    var state52 = ButtonState()
    var state53 = ButtonState()
    var state54 = ButtonState()
    var state55 = ButtonState()
    var state56 = ButtonState()
    var state57 = ButtonState()
    var state58 = ButtonState()
    var state59 = ButtonState()
    var state510 = ButtonState()
    
    //row6
    var state60 = ButtonState()
    var state61 = ButtonState()
    var state62 = ButtonState()
    var state63 = ButtonState()
    var state64 = ButtonState()
    var state65 = ButtonState()
    var state66 = ButtonState()
    var state67 = ButtonState()
    var state68 = ButtonState()
    var state69 = ButtonState()
    var state610 = ButtonState()
    
    //row7
    var state70 = ButtonState()
    var state71 = ButtonState()
    var state72 = ButtonState()
    var state73 = ButtonState()
    var state74 = ButtonState()
    var state75 = ButtonState()
    var state76 = ButtonState()
    var state77 = ButtonState()
    var state78 = ButtonState()
    var state79 = ButtonState()
    var state710 = ButtonState()
    
    //row8
    var state80 = ButtonState()
    var state81 = ButtonState()
    var state82 = ButtonState()
    var state83 = ButtonState()
    var state84 = ButtonState()
    var state85 = ButtonState()
    var state86 = ButtonState()
    var state87 = ButtonState()
    var state88 = ButtonState()
    var state89 = ButtonState()
    var state810 = ButtonState()
    
    //row9
    var state90 = ButtonState()
    var state91 = ButtonState()
    var state92 = ButtonState()
    var state93 = ButtonState()
    var state94 = ButtonState()
    var state95 = ButtonState()
    var state96 = ButtonState()
    var state97 = ButtonState()
    var state98 = ButtonState()
    var state99 = ButtonState()
    var state910 = ButtonState()
    
    //row10
    var state100 = ButtonState()
    var state101 = ButtonState()
    var state102 = ButtonState()
    var state103 = ButtonState()
    var state104 = ButtonState()
    var state105 = ButtonState()
    var state106 = ButtonState()
    var state107 = ButtonState()
    var state108 = ButtonState()
    var state109 = ButtonState()
    var state1010 = ButtonState()
    
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
    
    func cellButtonAction(row: Int, col: Int){
        var state: ButtonState
        var button: UIButton
        
        switch(row, col){
        case(0,0):                  //row 0 --------
            state = state00
            button = Button00
            break
        case(0,1):
            state = state01
            button = Button01
            break
        case(0,2):
            state = state02
            button = Button02
            break
        case(0,3):
            state = state03
            button = Button03
            break
        case(0,4):
            state = state04
            button = Button04
            break
        case(0,5):
            state = state05
            button = Button05
            break
        case(0,6):
            state = state06
            button = Button06
            break
        case(0,7):
            state = state07
            button = Button07
            break
        case(0,8):
            state = state08
            button = Button08
            break
        case(0,9):
            state = state09
            button = Button09
            break
        case(0,10):
            state = state010
            button = Button010
            break
        case(1,0):                  //row 1 --------
            state = state10
            button = Button10
            break
        case(1,1):
            state = state11
            button = Button11
            break
        case(1,2):
            state = state12
            button = Button12
            break
        case(1,3):
            state = state13
            button = Button13
            break
        case(1,4):
            state = state14
            button = Button14
            break
        case(1,5):
            state = state15
            button = Button15
            break
        case(1,6):
            state = state16
            button = Button16
            break
        case(1,7):
            state = state17
            button = Button17
            break
        case(1,8):
            state = state18
            button = Button18
            break
        case(1,9):
            state = state19
            button = Button19
            break
        case(1,10):
            state = state110
            button = Button110
            break
        case (_, _):
            return
        }
        
        if(startfound == false || state01.isStart){
            button.backgroundColor = UIColor(named: "start")
            state.makeStart()
            startfound = true;
            instructionLabel.text = "Select End"
        } else if(endfound == false || state01.isEnd){
            button.backgroundColor = UIColor(named: "finish")
            state.makeEnd()
            endfound = true;
        } else if(state.isPath == true){
            button.backgroundColor = UIColor(named: "barrier")
            state.makeBarrier()
        } else if(state.isBarrier == true){
            button.backgroundColor = UIColor(named: "defaultTileColor")
            state.makePath()
        }
        
    }
    
    //cell Button actions
    
    // - row 0 -------------------------------------------------------
    // - row 0 -------------------------------------------------------
    // - row 0 -------------------------------------------------------
    
    @IBAction func pressed00(_ sender: Any) {
        cellButtonAction(row: 0, col: 0)
    }
    @IBAction func pressed01(_ sender: Any) {
        cellButtonAction(row: 0, col: 1)
    }
    @IBAction func pressed02(_ sender: Any) {
        cellButtonAction(row: 0, col: 2)
    }
    @IBAction func pressed03(_ sender: Any) {
        cellButtonAction(row: 0, col: 3)
    }
    @IBAction func pressed04(_ sender: Any) {
        cellButtonAction(row: 0, col: 4)
    }
    @IBAction func pressed05(_ sender: Any) {
        cellButtonAction(row: 0, col: 5)
    }
    @IBAction func pressed06(_ sender: Any) {
        cellButtonAction(row: 0, col: 6)
    }
    @IBAction func pressed07(_ sender: Any) {
        cellButtonAction(row: 0, col: 7)
    }
    @IBAction func pressed08(_ sender: Any) {
        cellButtonAction(row: 0, col: 8)
    }
    @IBAction func pressed09(_ sender: Any) {
        cellButtonAction(row: 0, col: 9)
    }
    @IBAction func pressed010(_ sender: Any) {
        cellButtonAction(row: 0, col: 10)
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

