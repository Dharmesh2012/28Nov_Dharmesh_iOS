//
//  FourthViewController.swift
//  D_M5_Ass16_iOss
//
//  Created by Dharmesh N. Agravat on 20/04/23.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func btnLogout(_ sender: Any) {
        UserDefaults.standard.setValue(false, forKey: "cuser")
        appDel?.goToLogin()
    }
    
}
