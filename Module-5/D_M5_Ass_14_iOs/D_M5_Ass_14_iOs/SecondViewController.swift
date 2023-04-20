//
//  SecondViewController.swift
//  D_M5_Ass_14_iOs
//
//  Created by Dharmesh N. Agravat on 18/04/23.
//

import UIKit

class SecondViewController: UIViewController {
    var getCapitals : String = ""
    
    @IBOutlet weak var lblCapitals: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblCapitals.text = "The Capital is :-  \(getCapitals)"
        
    }
    

   
}
