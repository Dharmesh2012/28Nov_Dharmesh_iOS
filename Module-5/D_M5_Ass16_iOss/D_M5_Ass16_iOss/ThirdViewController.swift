//
//  ThirdViewController.swift
//  D_M5_Ass16_iOss
//
//  Created by Dharmesh N. Agravat on 20/04/23.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnNext(_ sender: Any) {
//        let nav = storyboard?.instantiateViewController(withIdentifier: "fourthVC") as? FourthViewController
//        navigationController?.pushViewController(nav ?? UIViewController(), animated: true)
        let vc: FourthViewController = storyboard?.instantiateViewController(withIdentifier: "FourthViewController") as! FourthViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

}
