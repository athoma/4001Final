//
//  ConverterController.swift
//  Conversion Calculator
//
//  Created by Adam Thoma-Perry on 4/13/18.
//  Copyright © 2018 Thoma-Perry, Adam. All rights reserved.
//

import UIKit

class ConverterController: UIViewController {
    
    var flag = 0
    var decimal = false
    var positive = true
    
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
    var converters: [Converters] = []
    
    @IBAction func convertButton(_ sender: Any) {
        let alert = UIAlertController(title: "Choose Converter", message: nil, preferredStyle: UIAlertControllerStyle.actionSheet)
        
        alert.addAction(UIAlertAction(title: converters[0].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.placeholder = self.converters[0].inputUnit
            self.outputDisplay.placeholder = self.converters[0].outputUnit
            self.inputDisplay.text = ""
            self.outputDisplay.text = ""
            self.flag = 0
            self.decimal = false
        }))
        alert.addAction(UIAlertAction(title: converters[1].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.placeholder = self.converters[1].inputUnit
            self.outputDisplay.placeholder = self.converters[1].outputUnit
            self.inputDisplay.text = ""
            self.outputDisplay.text = ""
            self.flag = 1
            self.decimal = false
        }))
        alert.addAction(UIAlertAction(title: converters[2].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.placeholder = self.converters[2].inputUnit
            self.outputDisplay.placeholder = self.converters[2].outputUnit
            self.inputDisplay.text = ""
            self.outputDisplay.text = ""
            self.flag = 2
            self.decimal = false
        }))
        alert.addAction(UIAlertAction(title: converters[3].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.placeholder = self.converters[3].inputUnit
            self.outputDisplay.placeholder = self.converters[3].outputUnit
            self.inputDisplay.text = ""
            self.outputDisplay.text = ""
            self.flag = 3
            self.decimal = false
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addConvertions()
        inputDisplay.placeholder = converters[0].inputUnit
        outputDisplay.placeholder = converters[0].outputUnit
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func addConvertions() {
        let fah_to_celcius = Converters(label:"Fahrenheit to Celcius", inputUnit:"°F", outputUnit:"°C")
        let celcius_to_fah = Converters(label:"Celcius to Fahrenheit", inputUnit:"°C", outputUnit:"°F")
        let miles_to_kilos = Converters(label:"Miles to Kilometers", inputUnit:"mi", outputUnit:"km")
        let kilos_to_miles = Converters(label:"Kilometers to Miles", inputUnit:"km", outputUnit:"mi")
        converters = [fah_to_celcius, celcius_to_fah, miles_to_kilos, kilos_to_miles]
    }
    
    @IBAction func clearButton(_ sender: Any) {
        inputDisplay.text = ""
        outputDisplay.text = ""
        decimal = false
    }
    
    @IBAction func plusMinus(_ sender: Any) {
        if positive && inputDisplay.text?.isEmpty == false {
            inputDisplay.text?.insert("-", at: (inputDisplay.text?.startIndex)!)
            let calculated = String(format: "%.2f", calculate(inputDisplay.text, flag))
            outputDisplay.text = "\(calculated)"
            positive = false
        } else if !positive && inputDisplay.text?.isEmpty == false {
            inputDisplay.text?.remove(at: (inputDisplay.text?.startIndex)!)
            let calculated = String(format: "%.2f", calculate(inputDisplay.text, flag))
            outputDisplay.text = "\(calculated)"
            positive = true
        }
    }
    
    @IBAction func nineButton(_ sender: Any) {
        inputDisplay.text?.append("9")
        //let calculated = calculate(inputDisplay.text, flag)
        let calculated = String(format: "%.2f", calculate(inputDisplay.text, flag))
        outputDisplay.text = "\(calculated)"
    }
    
    @IBAction func eightButton(_ sender: Any) {
        inputDisplay.text?.append("8")
        let calculated = String(format: "%.2f", calculate(inputDisplay.text, flag))
        outputDisplay.text = "\(calculated)"
    }
    
    @IBAction func sevenButton(_ sender: Any) {
        inputDisplay.text?.append("7")
        let calculated = String(format: "%.2f", calculate(inputDisplay.text, flag))
        outputDisplay.text = "\(calculated)"
    }
    
    @IBAction func sixButton(_ sender: Any) {
        inputDisplay.text?.append("6")
        let calculated = String(format: "%.2f", calculate(inputDisplay.text, flag))
        outputDisplay.text = "\(calculated)"
    }
    
    @IBAction func fiveButton(_ sender: Any) {
        inputDisplay.text?.append("5")
        let calculated = String(format: "%.2f", calculate(inputDisplay.text, flag))
        outputDisplay.text = "\(calculated)"
    }
    
    @IBAction func fourButton(_ sender: Any) {
        inputDisplay.text?.append("4")
        let calculated = String(format: "%.2f", calculate(inputDisplay.text, flag))
        outputDisplay.text = "\(calculated)"
    }
    
    @IBAction func threeButton(_ sender: Any) {
        inputDisplay.text?.append("3")
        let calculated = String(format: "%.2f", calculate(inputDisplay.text, flag))
        outputDisplay.text = "\(calculated)"
    }
    
    @IBAction func twoButton(_ sender: Any) {
        inputDisplay.text?.append("2")
        let calculated = String(format: "%.2f", calculate(inputDisplay.text, flag))
        outputDisplay.text = "\(calculated)"
    }
    
    @IBAction func oneButton(_ sender: Any) {
        inputDisplay.text?.append("1")
        let calculated = String(format: "%.2f", calculate(inputDisplay.text, flag))
        outputDisplay.text = "\(calculated)"
    }
    
    @IBAction func zeroButton(_ sender: Any) {
        inputDisplay.text?.append("0")
        let calculated = String(format: "%.2f", calculate(inputDisplay.text, flag))
        outputDisplay.text = "\(calculated)"
    }
    
    @IBAction func decimalButton(_ sender: Any) {
        if !decimal {
            inputDisplay.text?.append(".")
            let calculated = String(format: "%.2f", calculate(inputDisplay.text, flag))
            outputDisplay.text = "\(calculated)"
            decimal = true
        }
    }
}
