//
//  ThirdViewController.swift
//  D_M4_Ass_15_iOs
//
//  Created by Dharmesh N. Agravat on 12/02/23.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var imgVieww: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        imgVieww.image = UIImage.init(named: "worldMap")
        imgVieww.contentMode = .scaleAspectFill
    }
    

    @IBAction func btnHome(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    

}
