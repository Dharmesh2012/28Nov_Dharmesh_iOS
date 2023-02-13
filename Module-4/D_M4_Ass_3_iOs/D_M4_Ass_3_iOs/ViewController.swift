//
//  ViewController.swift
//  D_M4_Ass_3_iOs
//
//  Created by Dharmesh N. Agravat on 09/02/23.
//

import UIKit

//Make an app when we click on button that time value will be displayed from text field to the label.

class ViewController: UIViewController {

    @IBOutlet weak var txtField: UITextField!
    @IBOutlet weak var lblForShow: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnTap(_ sender: Any) {
        lblForShow.text = txtField.text
    }
    
}

