//
//  SecondViewController.swift
//  D_M4_Ass_17_iOs
//
//  Created by Dharmesh N. Agravat on 12/02/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var imgViewSeVC: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        
        imgViewSeVC.image = UIImage.init(named: "img2")
        imgViewSeVC.contentMode = .scaleAspectFill
    }
    
    @IBAction func backButton(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
   

}
