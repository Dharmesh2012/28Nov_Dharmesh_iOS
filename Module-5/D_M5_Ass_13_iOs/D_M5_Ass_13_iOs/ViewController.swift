//
//  ViewController.swift
//  D_M5_Ass_13_iOs
//
//  Created by Dharmesh N. Agravat on 17/02/23.
//

//Make an app to hide tab bar panel in specific viewcontroller like login and registration.

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.image = UIImage(named: "welcome")
        tabBarController?.tabBar.backgroundColor = UIColor.white
    }
    override func viewWillAppear(_ animated: Bool) {
              super.viewWillAppear(animated)
              self.tabBarController?.tabBar.isHidden = false
          
          }
    
    
    
    @IBAction func btnNext(_ sender: Any) {
        let nav = storyboard?.instantiateViewController(withIdentifier: "seVC") as? SecondViewController
        nav?.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(nav ?? UIViewController(), animated: true)
    }
}

