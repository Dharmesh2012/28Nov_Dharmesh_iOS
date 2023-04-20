//
//  ThirdViewController.swift
//  D_M5_Ass_13_iOs
//
//  Created by Dharmesh N. Agravat on 15/04/23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var imgVieww: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
     
        imgVieww.image = UIImage(named: "aboutUs")
        
    }
    override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
           self.tabBarController?.tabBar.isHidden = false
       
       }
    
    
    
}
