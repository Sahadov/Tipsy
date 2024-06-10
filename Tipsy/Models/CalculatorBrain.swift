//
//  CalculatorBrain.swift
//  Tipsy
//
//  Created by Дмитрий Волков on 09.06.2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var tipString: String = "0%"
    var peopleNumber: Float = 0
    var totalSum: Float = 0.0
    
    var tip: Float {
        if tipString == "10%" {
            return 0.1
        } else if tipString == "20%" {
            return 0.2
        } else {
            return 0.0
        }
        
    }
    
    var eachTip: Float {
        return (totalSum + (totalSum * tip)) / peopleNumber
    }
    
   
    
    
}
