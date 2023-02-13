//
//  SecondViewController.swift
//  D_M4_Ass_15_iOs
//
//  Created by Dharmesh N. Agravat on 12/02/23.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var lbl4: UILabel!
    @IBOutlet weak var lbl5: UILabel!
    
    var getState : [String?] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl1.text = getState[0]
        lbl2.text = getState[1]
        lbl3.text = getState[2]
        lbl4.text = getState[3]
        lbl5.text = getState[4]
    }
    
    @IBAction func btnNext(_ sender: Any) {
        let nav = storyboard?.instantiateViewController(withIdentifier: "thVC") as?  ThirdViewController
        navigationController?.pushViewController(nav ?? UIViewController(), animated: true)
    }
    

}
