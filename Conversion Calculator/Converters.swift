//
//  Converters.swift
//  Conversion Calculator
//
//  Created by Adam Thoma-Perry on 5/7/18.
//  Copyright © 2018 Thoma-Perry, Adam. All rights reserved.
//

import Foundation

struct Converters {
    let label: String
    let inputUnit: String
    let outputUnit: String
    
    init(label: String, inputUnit: String, outputUnit: String){
        self.label = label
        self.inputUnit = inputUnit
        self.outputUnit = outputUnit
    }
}
