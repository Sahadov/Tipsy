//
//  CalculatorBrain.swift
//  Tipsy
//
//  Created by Дмитрий Волков on 09.06.2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var peopleNumber: Int = 2
    var totalSum: Float = 0.0
    var tipString: String = "0%"
    
    var tip: Float {
        if tipString == "10%" {
            return 0.1
        } else if tipString == "20%" {
            return 0.2
        } else {
            return 0.0
        }
        
    }
    
    func getEachTip() -> Float {
        return (totalSum + (totalSum * tip)) / Float(peopleNumber)
    }
    
    func getEachTipString() -> String {
        return String(format: "%.2f", getEachTip())
    }
    
   
    
    
}
