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
    
    var startfound = false
    var endfound = false
    
    var state00 = ButtonState()
    var state01 = ButtonState()

    //other user interface elements-------------
    @IBOutlet weak var ResetButton: UIButton!
    @IBOutlet weak var RunButton: UIButton!
    @IBOutlet weak var AlgoPicker: UITextField!
    @IBOutlet weak var instructionLabel: UILabel!
    
    //cell buttons------------------------------
    //row 1
    @IBOutlet weak var Button00: UIButton!
    
    @IBOutlet weak var Button01: UIButton!
    
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
        
        //reseting all cell colors
        Button00.backgroundColor = UIColor(named: "defaultTileColor")
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
        Button01.backgroundColor = UIColor(named: "barrier")
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //portrait mode only
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
       get {
          return .portrait
       }
    }
    
    //pickerView Functions
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

}

