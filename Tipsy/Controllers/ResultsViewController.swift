//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Дмитрий Волков on 09.06.2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var totalSum: Float?
    var tipString: String?
    var peopleNumber: Int?
    var eachTip: String?
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    
    @IBAction func recalculatePressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = eachTip
        settingsLabel.text = "Split beetwen \(peopleNumber!) people, with \(tipString!) tip."

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
