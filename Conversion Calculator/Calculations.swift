//
//  Calculations.swift
//  Conversion Calculator
//
//  Created by Adam Thoma-Perry on 5/7/18.
//  Copyright © 2018 Thoma-Perry, Adam. All rights reserved.
//

import UIKit

extension ConverterController {
    
    func calculate(_ inputString: String?, _ flag: Int) -> Double {
        if let input = Double(inputString!) {
            if flag == 0 {
                let celcius = (input - 32) / 1.8
                return celcius
            } else if flag == 1 {
                let fahrenheit = input * 1.8 + 32
                return fahrenheit
            } else if flag == 2 {
                let kilometers = input * 1.609344
                return kilometers
            } else {
                let miles = input / 1.609344
                return miles
            }
        } else {return 0}
    }
}
