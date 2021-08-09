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
    var state0_10 = ButtonState()
    
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
    var state1_10 = ButtonState()
    
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
    var state2_10 = ButtonState()
    
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
    var state3_10 = ButtonState()
    
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
    var state4_10 = ButtonState()
    
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
    var state5_10 = ButtonState()
    
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
    var state6_10 = ButtonState()
    
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
    var state7_10 = ButtonState()
    
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
    var state8_10 = ButtonState()
    
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
    var state9_10 = ButtonState()
    
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
    var state10_10 = ButtonState()
    
    //row11
    var state110 = ButtonState()
    var state111 = ButtonState()
    var state112 = ButtonState()
    var state113 = ButtonState()
    var state114 = ButtonState()
    var state115 = ButtonState()
    var state116 = ButtonState()
    var state117 = ButtonState()
    var state118 = ButtonState()
    var state119 = ButtonState()
    var state11_10 = ButtonState()
    
    //row12
    var state120 = ButtonState()
    var state121 = ButtonState()
    var state122 = ButtonState()
    var state123 = ButtonState()
    var state124 = ButtonState()
    var state125 = ButtonState()
    var state126 = ButtonState()
    var state127 = ButtonState()
    var state128 = ButtonState()
    var state129 = ButtonState()
    var state12_10 = ButtonState()
    
    //row13
    var state130 = ButtonState()
    var state131 = ButtonState()
    var state132 = ButtonState()
    var state133 = ButtonState()
    var state134 = ButtonState()
    var state135 = ButtonState()
    var state136 = ButtonState()
    var state137 = ButtonState()
    var state138 = ButtonState()
    var state139 = ButtonState()
    var state13_10 = ButtonState()
    
    //row14
    var state140 = ButtonState()
    var state141 = ButtonState()
    var state142 = ButtonState()
    var state143 = ButtonState()
    var state144 = ButtonState()
    var state145 = ButtonState()
    var state146 = ButtonState()
    var state147 = ButtonState()
    var state148 = ButtonState()
    var state149 = ButtonState()
    var state14_10 = ButtonState()
    
    //row15
    var state150 = ButtonState()
    var state151 = ButtonState()
    var state152 = ButtonState()
    var state153 = ButtonState()
    var state154 = ButtonState()
    var state155 = ButtonState()
    var state156 = ButtonState()
    var state157 = ButtonState()
    var state158 = ButtonState()
    var state159 = ButtonState()
    var state15_10 = ButtonState()
    
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
    @IBOutlet weak var Button0_10: UIButton!
    
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
    @IBOutlet weak var Button1_10: UIButton!
    
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
    @IBOutlet weak var Button2_10: UIButton!
    
    
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
    @IBOutlet weak var Button3_10: UIButton!
    
    //row4
    @IBOutlet weak var Button40: UIButton!
    @IBOutlet weak var Button41: UIButton!
    @IBOutlet weak var Button42: UIButton!
    @IBOutlet weak var Button43: UIButton!
    @IBOutlet weak var Button44: UIButton!
    @IBOutlet weak var Button45: UIButton!
    @IBOutlet weak var Button46: UIButton!
    @IBOutlet weak var Button47: UIButton!
    @IBOutlet weak var Button48: UIButton!
    @IBOutlet weak var Button49: UIButton!
    @IBOutlet weak var Button4_10: UIButton!
    
    //row5
    @IBOutlet weak var Button50: UIButton!
    @IBOutlet weak var Button51: UIButton!
    @IBOutlet weak var Button52: UIButton!
    @IBOutlet weak var Button53: UIButton!
    @IBOutlet weak var Button54: UIButton!
    @IBOutlet weak var Button55: UIButton!
    @IBOutlet weak var Button56: UIButton!
    @IBOutlet weak var Button57: UIButton!
    @IBOutlet weak var Button58: UIButton!
    @IBOutlet weak var Button59: UIButton!
    @IBOutlet weak var Button5_10: UIButton!
    
    //row6
    @IBOutlet weak var Button60: UIButton!
    @IBOutlet weak var Button61: UIButton!
    @IBOutlet weak var Button62: UIButton!
    @IBOutlet weak var Button63: UIButton!
    @IBOutlet weak var Button64: UIButton!
    @IBOutlet weak var Button65: UIButton!
    @IBOutlet weak var Button66: UIButton!
    @IBOutlet weak var Button67: UIButton!
    @IBOutlet weak var Button68: UIButton!
    @IBOutlet weak var Button69: UIButton!
    @IBOutlet weak var Button6_10: UIButton!
    
    //row7
    @IBOutlet weak var Button70: UIButton!
    @IBOutlet weak var Button71: UIButton!
    @IBOutlet weak var Button72: UIButton!
    @IBOutlet weak var Button73: UIButton!
    @IBOutlet weak var Button74: UIButton!
    @IBOutlet weak var Button75: UIButton!
    @IBOutlet weak var Button76: UIButton!
    @IBOutlet weak var Button77: UIButton!
    @IBOutlet weak var Button78: UIButton!
    @IBOutlet weak var Button79: UIButton!
    @IBOutlet weak var Button7_10: UIButton!
    
    //row8
    @IBOutlet weak var Button80: UIButton!
    @IBOutlet weak var Button81: UIButton!
    @IBOutlet weak var Button82: UIButton!
    @IBOutlet weak var Button83: UIButton!
    @IBOutlet weak var Button84: UIButton!
    @IBOutlet weak var Button85: UIButton!
    @IBOutlet weak var Button86: UIButton!
    @IBOutlet weak var Button87: UIButton!
    @IBOutlet weak var Button88: UIButton!
    @IBOutlet weak var Button89: UIButton!
    @IBOutlet weak var Button8_10: UIButton!
    
    //row9
    @IBOutlet weak var Button90: UIButton!
    @IBOutlet weak var Button91: UIButton!
    @IBOutlet weak var Button92: UIButton!
    @IBOutlet weak var Button93: UIButton!
    @IBOutlet weak var Button94: UIButton!
    @IBOutlet weak var Button95: UIButton!
    @IBOutlet weak var Button96: UIButton!
    @IBOutlet weak var Button97: UIButton!
    @IBOutlet weak var Button98: UIButton!
    @IBOutlet weak var Button99: UIButton!
    @IBOutlet weak var Button9_10: UIButton!
    
    //row10
    @IBOutlet weak var Button100: UIButton!
    @IBOutlet weak var Button101: UIButton!
    @IBOutlet weak var Button102: UIButton!
    @IBOutlet weak var Button103: UIButton!
    @IBOutlet weak var Button104: UIButton!
    @IBOutlet weak var Button105: UIButton!
    @IBOutlet weak var Button106: UIButton!
    @IBOutlet weak var Button107: UIButton!
    @IBOutlet weak var Button108: UIButton!
    @IBOutlet weak var Button109: UIButton!
    @IBOutlet weak var Button10_10: UIButton!
    
    //row11
    @IBOutlet weak var Button110: UIButton!
    @IBOutlet weak var Button111: UIButton!
    @IBOutlet weak var Button112: UIButton!
    @IBOutlet weak var Button113: UIButton!
    @IBOutlet weak var Button114: UIButton!
    @IBOutlet weak var Button115: UIButton!
    @IBOutlet weak var Button116: UIButton!
    @IBOutlet weak var Button117: UIButton!
    @IBOutlet weak var Button118: UIButton!
    @IBOutlet weak var Button119: UIButton!
    @IBOutlet weak var Button11_10: UIButton!
    
    //row12
    @IBOutlet weak var Button120: UIButton!
    @IBOutlet weak var Button121: UIButton!
    @IBOutlet weak var Button122: UIButton!
    @IBOutlet weak var Button123: UIButton!
    @IBOutlet weak var Button124: UIButton!
    @IBOutlet weak var Button125: UIButton!
    @IBOutlet weak var Button126: UIButton!
    @IBOutlet weak var Button127: UIButton!
    @IBOutlet weak var Button128: UIButton!
    @IBOutlet weak var Button129: UIButton!
    @IBOutlet weak var Button12_10: UIButton!
    
    //row13
    @IBOutlet weak var Button130: UIButton!
    @IBOutlet weak var Button131: UIButton!
    @IBOutlet weak var Button132: UIButton!
    @IBOutlet weak var Button133: UIButton!
    @IBOutlet weak var Button134: UIButton!
    @IBOutlet weak var Button135: UIButton!
    @IBOutlet weak var Button136: UIButton!
    @IBOutlet weak var Button137: UIButton!
    @IBOutlet weak var Button138: UIButton!
    @IBOutlet weak var Button139: UIButton!
    @IBOutlet weak var Button13_10: UIButton!
    
    //row14
    @IBOutlet weak var Button140: UIButton!
    @IBOutlet weak var Button141: UIButton!
    @IBOutlet weak var Button142: UIButton!
    @IBOutlet weak var Button143: UIButton!
    @IBOutlet weak var Button144: UIButton!
    @IBOutlet weak var Button145: UIButton!
    @IBOutlet weak var Button146: UIButton!
    @IBOutlet weak var Button147: UIButton!
    @IBOutlet weak var Button148: UIButton!
    @IBOutlet weak var Button149: UIButton!
    @IBOutlet weak var Button14_10: UIButton!
    
    //row15
    @IBOutlet weak var Button150: UIButton!
    @IBOutlet weak var Button151: UIButton!
    @IBOutlet weak var Button152: UIButton!
    @IBOutlet weak var Button153: UIButton!
    @IBOutlet weak var Button154: UIButton!
    @IBOutlet weak var Button155: UIButton!
    @IBOutlet weak var Button156: UIButton!
    @IBOutlet weak var Button157: UIButton!
    @IBOutlet weak var Button158: UIButton!
    @IBOutlet weak var Button159: UIButton!
    @IBOutlet weak var Button15_10: UIButton!
    
    
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
        state0_10.resetState()
        
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
        state2_10.resetState()
        
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
        state3_10.resetState()
        
        //row4
        state40.resetState()
        state41.resetState()
        state42.resetState()
        state43.resetState()
        state44.resetState()
        state45.resetState()
        state46.resetState()
        state47.resetState()
        state48.resetState()
        state49.resetState()
        state4_10.resetState()
        
        //row5
        state50.resetState()
        state51.resetState()
        state52.resetState()
        state53.resetState()
        state54.resetState()
        state55.resetState()
        state56.resetState()
        state57.resetState()
        state58.resetState()
        state59.resetState()
        state5_10.resetState()
        
        //row6
        state60.resetState()
        state61.resetState()
        state62.resetState()
        state63.resetState()
        state64.resetState()
        state65.resetState()
        state66.resetState()
        state67.resetState()
        state68.resetState()
        state69.resetState()
        state6_10.resetState()
        
        //row7
        state70.resetState()
        state71.resetState()
        state72.resetState()
        state73.resetState()
        state74.resetState()
        state75.resetState()
        state76.resetState()
        state77.resetState()
        state78.resetState()
        state79.resetState()
        state7_10.resetState()
        
        //row8
        state80.resetState()
        state81.resetState()
        state82.resetState()
        state83.resetState()
        state84.resetState()
        state85.resetState()
        state86.resetState()
        state87.resetState()
        state88.resetState()
        state89.resetState()
        state8_10.resetState()
        
        //row9
        state90.resetState()
        state91.resetState()
        state92.resetState()
        state93.resetState()
        state94.resetState()
        state95.resetState()
        state96.resetState()
        state97.resetState()
        state98.resetState()
        state99.resetState()
        state9_10.resetState()
        
        //row10
        state100.resetState()
        state101.resetState()
        state102.resetState()
        state103.resetState()
        state104.resetState()
        state105.resetState()
        state106.resetState()
        state107.resetState()
        state108.resetState()
        state109.resetState()
        state10_10.resetState()
        
        //row11
        state110.resetState()
        state111.resetState()
        state112.resetState()
        state113.resetState()
        state114.resetState()
        state115.resetState()
        state116.resetState()
        state117.resetState()
        state118.resetState()
        state119.resetState()
        state11_10.resetState()
        
        //row12
        state120.resetState()
        state121.resetState()
        state122.resetState()
        state123.resetState()
        state124.resetState()
        state125.resetState()
        state126.resetState()
        state127.resetState()
        state128.resetState()
        state129.resetState()
        state12_10.resetState()
        
        //row13
        state130.resetState()
        state131.resetState()
        state132.resetState()
        state133.resetState()
        state134.resetState()
        state135.resetState()
        state136.resetState()
        state137.resetState()
        state138.resetState()
        state139.resetState()
        state13_10.resetState()
        
        //row14
        state140.resetState()
        state141.resetState()
        state142.resetState()
        state143.resetState()
        state144.resetState()
        state145.resetState()
        state146.resetState()
        state147.resetState()
        state148.resetState()
        state149.resetState()
        state14_10.resetState()
        
        //row15
        state150.resetState()
        state151.resetState()
        state152.resetState()
        state153.resetState()
        state154.resetState()
        state155.resetState()
        state156.resetState()
        state157.resetState()
        state158.resetState()
        state159.resetState()
        state15_10.resetState()
        
        
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
        Button0_10.backgroundColor = UIColor(named: "defaultTileColor")
        
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
        Button1_10.backgroundColor = UIColor(named: "defaultTileColor")
        
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
        Button2_10.backgroundColor = UIColor(named: "defaultTileColor")
        
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
        Button3_10.backgroundColor = UIColor(named: "defaultTileColor")
        
        //row4
        Button40.backgroundColor = UIColor(named: "defaultTileColor")
        Button41.backgroundColor = UIColor(named: "defaultTileColor")
        Button42.backgroundColor = UIColor(named: "defaultTileColor")
        Button43.backgroundColor = UIColor(named: "defaultTileColor")
        Button44.backgroundColor = UIColor(named: "defaultTileColor")
        Button45.backgroundColor = UIColor(named: "defaultTileColor")
        Button46.backgroundColor = UIColor(named: "defaultTileColor")
        Button47.backgroundColor = UIColor(named: "defaultTileColor")
        Button48.backgroundColor = UIColor(named: "defaultTileColor")
        Button49.backgroundColor = UIColor(named: "defaultTileColor")
        Button4_10.backgroundColor = UIColor(named: "defaultTileColor")
        
        //row5
        Button50.backgroundColor = UIColor(named: "defaultTileColor")
        Button51.backgroundColor = UIColor(named: "defaultTileColor")
        Button52.backgroundColor = UIColor(named: "defaultTileColor")
        Button53.backgroundColor = UIColor(named: "defaultTileColor")
        Button54.backgroundColor = UIColor(named: "defaultTileColor")
        Button55.backgroundColor = UIColor(named: "defaultTileColor")
        Button56.backgroundColor = UIColor(named: "defaultTileColor")
        Button57.backgroundColor = UIColor(named: "defaultTileColor")
        Button58.backgroundColor = UIColor(named: "defaultTileColor")
        Button59.backgroundColor = UIColor(named: "defaultTileColor")
        Button5_10.backgroundColor = UIColor(named: "defaultTileColor")
        
        //row6
        Button60.backgroundColor = UIColor(named: "defaultTileColor")
        Button61.backgroundColor = UIColor(named: "defaultTileColor")
        Button62.backgroundColor = UIColor(named: "defaultTileColor")
        Button63.backgroundColor = UIColor(named: "defaultTileColor")
        Button64.backgroundColor = UIColor(named: "defaultTileColor")
        Button65.backgroundColor = UIColor(named: "defaultTileColor")
        Button66.backgroundColor = UIColor(named: "defaultTileColor")
        Button67.backgroundColor = UIColor(named: "defaultTileColor")
        Button68.backgroundColor = UIColor(named: "defaultTileColor")
        Button69.backgroundColor = UIColor(named: "defaultTileColor")
        Button6_10.backgroundColor = UIColor(named: "defaultTileColor")
        
        //row7
        Button70.backgroundColor = UIColor(named: "defaultTileColor")
        Button71.backgroundColor = UIColor(named: "defaultTileColor")
        Button72.backgroundColor = UIColor(named: "defaultTileColor")
        Button73.backgroundColor = UIColor(named: "defaultTileColor")
        Button74.backgroundColor = UIColor(named: "defaultTileColor")
        Button75.backgroundColor = UIColor(named: "defaultTileColor")
        Button76.backgroundColor = UIColor(named: "defaultTileColor")
        Button77.backgroundColor = UIColor(named: "defaultTileColor")
        Button78.backgroundColor = UIColor(named: "defaultTileColor")
        Button79.backgroundColor = UIColor(named: "defaultTileColor")
        Button7_10.backgroundColor = UIColor(named: "defaultTileColor")
        
        //row8
        Button80.backgroundColor = UIColor(named: "defaultTileColor")
        Button81.backgroundColor = UIColor(named: "defaultTileColor")
        Button82.backgroundColor = UIColor(named: "defaultTileColor")
        Button83.backgroundColor = UIColor(named: "defaultTileColor")
        Button84.backgroundColor = UIColor(named: "defaultTileColor")
        Button85.backgroundColor = UIColor(named: "defaultTileColor")
        Button86.backgroundColor = UIColor(named: "defaultTileColor")
        Button87.backgroundColor = UIColor(named: "defaultTileColor")
        Button88.backgroundColor = UIColor(named: "defaultTileColor")
        Button89.backgroundColor = UIColor(named: "defaultTileColor")
        Button8_10.backgroundColor = UIColor(named: "defaultTileColor")
        
        //row9
        Button90.backgroundColor = UIColor(named: "defaultTileColor")
        Button91.backgroundColor = UIColor(named: "defaultTileColor")
        Button92.backgroundColor = UIColor(named: "defaultTileColor")
        Button93.backgroundColor = UIColor(named: "defaultTileColor")
        Button94.backgroundColor = UIColor(named: "defaultTileColor")
        Button95.backgroundColor = UIColor(named: "defaultTileColor")
        Button96.backgroundColor = UIColor(named: "defaultTileColor")
        Button97.backgroundColor = UIColor(named: "defaultTileColor")
        Button98.backgroundColor = UIColor(named: "defaultTileColor")
        Button99.backgroundColor = UIColor(named: "defaultTileColor")
        Button9_10.backgroundColor = UIColor(named: "defaultTileColor")
        
        //row10
        Button100.backgroundColor = UIColor(named: "defaultTileColor")
        Button101.backgroundColor = UIColor(named: "defaultTileColor")
        Button102.backgroundColor = UIColor(named: "defaultTileColor")
        Button103.backgroundColor = UIColor(named: "defaultTileColor")
        Button104.backgroundColor = UIColor(named: "defaultTileColor")
        Button105.backgroundColor = UIColor(named: "defaultTileColor")
        Button106.backgroundColor = UIColor(named: "defaultTileColor")
        Button107.backgroundColor = UIColor(named: "defaultTileColor")
        Button108.backgroundColor = UIColor(named: "defaultTileColor")
        Button109.backgroundColor = UIColor(named: "defaultTileColor")
        Button10_10.backgroundColor = UIColor(named: "defaultTileColor")
        
        //row11
        Button110.backgroundColor = UIColor(named: "defaultTileColor")
        Button111.backgroundColor = UIColor(named: "defaultTileColor")
        Button112.backgroundColor = UIColor(named: "defaultTileColor")
        Button113.backgroundColor = UIColor(named: "defaultTileColor")
        Button114.backgroundColor = UIColor(named: "defaultTileColor")
        Button115.backgroundColor = UIColor(named: "defaultTileColor")
        Button116.backgroundColor = UIColor(named: "defaultTileColor")
        Button117.backgroundColor = UIColor(named: "defaultTileColor")
        Button118.backgroundColor = UIColor(named: "defaultTileColor")
        Button119.backgroundColor = UIColor(named: "defaultTileColor")
        Button11_10.backgroundColor = UIColor(named: "defaultTileColor")
        
        //row12
        Button120.backgroundColor = UIColor(named: "defaultTileColor")
        Button121.backgroundColor = UIColor(named: "defaultTileColor")
        Button122.backgroundColor = UIColor(named: "defaultTileColor")
        Button123.backgroundColor = UIColor(named: "defaultTileColor")
        Button124.backgroundColor = UIColor(named: "defaultTileColor")
        Button125.backgroundColor = UIColor(named: "defaultTileColor")
        Button126.backgroundColor = UIColor(named: "defaultTileColor")
        Button127.backgroundColor = UIColor(named: "defaultTileColor")
        Button128.backgroundColor = UIColor(named: "defaultTileColor")
        Button129.backgroundColor = UIColor(named: "defaultTileColor")
        Button12_10.backgroundColor = UIColor(named: "defaultTileColor")
        
        //row13
        Button130.backgroundColor = UIColor(named: "defaultTileColor")
        Button131.backgroundColor = UIColor(named: "defaultTileColor")
        Button132.backgroundColor = UIColor(named: "defaultTileColor")
        Button133.backgroundColor = UIColor(named: "defaultTileColor")
        Button134.backgroundColor = UIColor(named: "defaultTileColor")
        Button135.backgroundColor = UIColor(named: "defaultTileColor")
        Button136.backgroundColor = UIColor(named: "defaultTileColor")
        Button137.backgroundColor = UIColor(named: "defaultTileColor")
        Button138.backgroundColor = UIColor(named: "defaultTileColor")
        Button139.backgroundColor = UIColor(named: "defaultTileColor")
        Button13_10.backgroundColor = UIColor(named: "defaultTileColor")
        
        //row14
        Button140.backgroundColor = UIColor(named: "defaultTileColor")
        Button141.backgroundColor = UIColor(named: "defaultTileColor")
        Button142.backgroundColor = UIColor(named: "defaultTileColor")
        Button143.backgroundColor = UIColor(named: "defaultTileColor")
        Button144.backgroundColor = UIColor(named: "defaultTileColor")
        Button145.backgroundColor = UIColor(named: "defaultTileColor")
        Button146.backgroundColor = UIColor(named: "defaultTileColor")
        Button147.backgroundColor = UIColor(named: "defaultTileColor")
        Button148.backgroundColor = UIColor(named: "defaultTileColor")
        Button149.backgroundColor = UIColor(named: "defaultTileColor")
        Button14_10.backgroundColor = UIColor(named: "defaultTileColor")
        
        //row15
        Button150.backgroundColor = UIColor(named: "defaultTileColor")
        Button151.backgroundColor = UIColor(named: "defaultTileColor")
        Button152.backgroundColor = UIColor(named: "defaultTileColor")
        Button153.backgroundColor = UIColor(named: "defaultTileColor")
        Button154.backgroundColor = UIColor(named: "defaultTileColor")
        Button155.backgroundColor = UIColor(named: "defaultTileColor")
        Button156.backgroundColor = UIColor(named: "defaultTileColor")
        Button157.backgroundColor = UIColor(named: "defaultTileColor")
        Button158.backgroundColor = UIColor(named: "defaultTileColor")
        Button159.backgroundColor = UIColor(named: "defaultTileColor")
        Button15_10.backgroundColor = UIColor(named: "defaultTileColor")
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
            state = state0_10
            button = Button0_10
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
            state = state1_10
            button = Button1_10
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
    @IBAction func pressed0_10(_ sender: Any) {
        cellButtonAction(row: 0, col: 10)
    }
    
    // - row 1 -------------------------------------------------------
    @IBAction func pressed10(_ sender: Any) {
        cellButtonAction(row: 1, col: 0)
    }
    @IBAction func pressed11(_ sender: Any) {
        cellButtonAction(row: 1, col: 1)
    }
    @IBAction func pressed12(_ sender: Any) {
        cellButtonAction(row: 1, col: 2)
    }
    @IBAction func pressed13(_ sender: Any) {
        cellButtonAction(row: 1, col: 3)
    }
    @IBAction func pressed14(_ sender: Any) {
        cellButtonAction(row: 1, col: 4)
    }
    @IBAction func pressed15(_ sender: Any) {
        cellButtonAction(row: 1, col: 5)
    }
    @IBAction func pressed16(_ sender: Any) {
        cellButtonAction(row: 1, col: 6)
    }
    @IBAction func pressed17(_ sender: Any) {
        cellButtonAction(row: 1, col: 7)
    }
    @IBAction func pressed18(_ sender: Any) {
        cellButtonAction(row: 1, col: 8)
    }
    
    @IBAction func pressed19(_ sender: Any) {
        cellButtonAction(row: 1, col: 9)
    }
    @IBAction func pressed1_10(_ sender: Any) {
        cellButtonAction(row: 1, col: 10)
    }
    
    // - row 2 -------------------------------------------------------
    @IBAction func pressed20(_ sender: Any) {
        cellButtonAction(row: 2, col: 0)
    }
    @IBAction func pressed21(_ sender: Any) {
        cellButtonAction(row: 2, col: 1)
    }
    @IBAction func pressed22(_ sender: Any) {
        cellButtonAction(row: 2, col: 2)
    }
    @IBAction func pressed23(_ sender: Any) {
        cellButtonAction(row: 2, col: 3)
    }
    @IBAction func pressed24(_ sender: Any) {
        cellButtonAction(row: 2, col: 4)
    }
    @IBAction func pressed25(_ sender: Any) {
        cellButtonAction(row: 2, col: 5)
    }
    @IBAction func pressed26(_ sender: Any) {
        cellButtonAction(row: 2, col: 6)
    }
    @IBAction func pressed27(_ sender: Any) {
        cellButtonAction(row: 2, col: 7)
    }
    @IBAction func pressed28(_ sender: Any) {
        cellButtonAction(row: 2, col: 8)
    }
    @IBAction func pressed29(_ sender: Any) {
        cellButtonAction(row: 2, col: 9)
    }
    @IBAction func pressed2_10(_ sender: Any) {
        cellButtonAction(row: 2, col: 10)
    }
    
    // - row 3 -------------------------------------------------------
    @IBAction func pressed30(_ sender: Any) {
        cellButtonAction(row: 3, col: 0)
    }
    @IBAction func pressed31(_ sender: Any) {
        cellButtonAction(row: 3, col: 1)
    }
    @IBAction func pressed32(_ sender: Any) {
        cellButtonAction(row: 3, col: 2)
    }
    @IBAction func pressed33(_ sender: Any) {
        cellButtonAction(row: 3, col: 3)
    }
    @IBAction func pressed34(_ sender: Any) {
        cellButtonAction(row: 3, col: 4)
    }
    @IBAction func pressed35(_ sender: Any) {
        cellButtonAction(row: 3, col: 5)
    }
    @IBAction func pressed36(_ sender: Any) {
        cellButtonAction(row: 3, col: 6)
    }
    @IBAction func pressed37(_ sender: Any) {
        cellButtonAction(row: 3, col: 7)
    }
    @IBAction func pressed38(_ sender: Any) {
        cellButtonAction(row: 3, col: 8)
    }
    @IBAction func pressed39(_ sender: Any) {
        cellButtonAction(row: 3, col: 9)
    }
    @IBAction func pressed3_10(_ sender: Any) {
        cellButtonAction(row: 3, col: 10)
    }
    
    // - row 4 -------------------------------------------------------
    @IBAction func pressed40(_ sender: Any) {
        cellButtonAction(row: 4, col: 0)
    }
    @IBAction func pressed41(_ sender: Any) {
        cellButtonAction(row: 4, col: 1)
    }
    @IBAction func pressed42(_ sender: Any) {
        cellButtonAction(row: 4, col: 2)
    }
    @IBAction func pressed43(_ sender: Any) {
        cellButtonAction(row: 4, col: 3)
    }
    @IBAction func pressed44(_ sender: Any) {
        cellButtonAction(row: 4, col: 4)
    }
    @IBAction func pressed45(_ sender: Any) {
        cellButtonAction(row: 4, col: 5)
    }
    @IBAction func pressed46(_ sender: Any) {
        cellButtonAction(row: 4, col: 6)
    }
    @IBAction func pressed47(_ sender: Any) {
        cellButtonAction(row: 4, col: 7)
    }
    @IBAction func pressed48(_ sender: Any) {
        cellButtonAction(row: 4, col: 8)
    }
    @IBAction func pressed49(_ sender: Any) {
        cellButtonAction(row: 4, col: 9)
    }
    @IBAction func pressed4_10(_ sender: Any) {
        cellButtonAction(row: 4, col: 10)
    }
    
    // - row 5 -------------------------------------------------------
    @IBAction func pressed50(_ sender: Any) {
        cellButtonAction(row: 5, col: 0)
    }
    @IBAction func pressed51(_ sender: Any) {
        cellButtonAction(row: 5, col: 1)
    }
    @IBAction func pressed52(_ sender: Any) {
        cellButtonAction(row: 5, col: 2)
    }
    @IBAction func pressed53(_ sender: Any) {
        cellButtonAction(row: 5, col: 3)
    }
    @IBAction func pressed54(_ sender: Any) {
        cellButtonAction(row: 5, col: 4)
    }
    @IBAction func pressed55(_ sender: Any) {
        cellButtonAction(row: 5, col: 5)
    }
    @IBAction func pressed56(_ sender: Any) {
        cellButtonAction(row: 5, col: 6)
    }
    @IBAction func pressed57(_ sender: Any) {
        cellButtonAction(row: 5, col: 7)
    }
    @IBAction func pressed58(_ sender: Any) {
        cellButtonAction(row: 5, col: 8)
    }
    @IBAction func pressed59(_ sender: Any) {
        cellButtonAction(row: 5, col: 9)
    }
    @IBAction func pressed5_10(_ sender: Any) {
        cellButtonAction(row: 5, col: 10)
    }
    
    // - row 6 -------------------------------------------------------
    @IBAction func pressed60(_ sender: Any) {
        cellButtonAction(row: 6, col: 0)
    }
    @IBAction func pressed61(_ sender: Any) {
        cellButtonAction(row: 6, col: 1)
    }
    @IBAction func pressed62(_ sender: Any) {
        cellButtonAction(row: 6, col: 2)
    }
    @IBAction func pressed63(_ sender: Any) {
        cellButtonAction(row: 6, col: 3)
    }
    @IBAction func pressed64(_ sender: Any) {
        cellButtonAction(row: 6, col: 4)
    }
    @IBAction func pressed65(_ sender: Any) {
        cellButtonAction(row: 6, col: 5)
    }
    @IBAction func pressed66(_ sender: Any) {
        cellButtonAction(row: 6, col: 6)
    }
    @IBAction func pressed67(_ sender: Any) {
        cellButtonAction(row: 6, col: 7)
    }
    @IBAction func pressed68(_ sender: Any) {
        cellButtonAction(row: 6, col: 8)
    }
    @IBAction func pressed69(_ sender: Any) {
        cellButtonAction(row: 6, col: 9)
    }
    @IBAction func pressed6_10(_ sender: Any) {
        cellButtonAction(row: 6, col: 10)
    }
    
    // - row 7 -------------------------------------------------------
    @IBAction func pressed70(_ sender: Any) {
    }
    
    // - row 8 -------------------------------------------------------
    
    // - row 9 -------------------------------------------------------
    
    // - row 10 -------------------------------------------------------
    
    // - row 11 -------------------------------------------------------
    
    // - row 12 -------------------------------------------------------
    
    // - row 13 -------------------------------------------------------
    
    // - row 14 -------------------------------------------------------
    
    // - row 15 -------------------------------------------------------
    
    
    
    
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

