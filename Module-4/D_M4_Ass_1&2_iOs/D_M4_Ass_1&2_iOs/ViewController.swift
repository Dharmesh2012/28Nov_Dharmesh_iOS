//
//  ViewController.swift
//  D_M4_Ass_1&2_iOs
//
//  Created by Dharmesh N. Agravat on 09/02/23.
//

import UIKit

//Make an app to Design login and sign up screen as we seen in any application.
//Make an app to Generate alert when user successfully login.

class ViewController: UIViewController {

 
    @IBOutlet weak var txtUserr: UITextField!
    @IBOutlet weak var txtPass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func loginAct(_ sender: Any) {
        if txtUserr.text == "" || txtPass.text == "" {
            var dialogMessage = UIAlertController(title: "Attention", message: "TextField Should not be empty", preferredStyle: .alert)
            
            
            let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
                print("Ok button tapped")
            })
            
            
            dialogMessage.addAction(ok)
            
            self.present(dialogMessage, animated: true, completion: nil)
        } else {
            var dialogMessage = UIAlertController(title: "Thanks", message: "Successfully Login!", preferredStyle: .alert)
            
            
            let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
                print("Ok button tapped")
            })
            
            
            dialogMessage.addAction(ok)
            
            self.present(dialogMessage, animated: true, completion: nil)
        }
    }
    @IBAction func signupAct(_ sender: Any) {
        let nav = storyboard?.instantiateViewController(withIdentifier: "seVC") as? SecondViewController
        navigationController?.pushViewController(nav ?? UIViewController(), animated: true)
    }
    
}

