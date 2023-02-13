//
//  ViewController.swift
//  D_M4_Ass_4_iOs
//
//  Created by Dharmesh N. Agravat on 09/02/23.
//

import UIKit

//Make an app to take two button for hide and show label.

class ViewController: UIViewController {

    @IBOutlet weak var lblHello: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblHello.isHidden = true
    }

    @IBAction func btnShow(_ sender: Any) {
        lblHello.isHidden = false
    }
    @IBAction func btnHide(_ sender: Any) {
        lblHello.isHidden = true
    }
    
}

