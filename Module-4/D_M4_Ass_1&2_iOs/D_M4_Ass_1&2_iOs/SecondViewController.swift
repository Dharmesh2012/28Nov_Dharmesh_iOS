//
//  SecondViewController.swift
//  D_M4_Ass_1&2_iOs
//
//  Created by Dharmesh N. Agravat on 10/02/23.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    
    @IBAction func submitAct(_ sender: Any) {
        var dialogMessage = UIAlertController(title: "Thanks", message: "Details Saved Successfully", preferredStyle: .alert)
        
     
        let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            print("Ok button tapped")
         })
        
    
        dialogMessage.addAction(ok)
    
        self.present(dialogMessage, animated: true, completion: nil)
    }
    
 

}
