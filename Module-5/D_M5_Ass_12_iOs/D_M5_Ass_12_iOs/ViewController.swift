//
//  ViewController.swift
//  D_M5_Ass_12_iOs
//
//  Created by Dharmesh N. Agravat on 17/02/23.
//

//Make an app to set tab bar controller with navigation bar and create five tab in viewcontroller

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.backgroundColor = .white
        tabBarController?.tabBar.backgroundColor = UIColor.white

    }
    @IBAction func btnTapHere(_ sender: Any) {
        let vc = ViewController()
        vc.view.backgroundColor = .black
        navigationController?.pushViewController(vc, animated: true)
    }
    

}

