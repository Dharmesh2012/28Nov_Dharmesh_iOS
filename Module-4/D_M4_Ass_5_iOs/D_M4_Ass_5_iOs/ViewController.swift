//
//  ViewController.swift
//  D_M4_Ass_5_iOs
//
//  Created by Dharmesh N. Agravat on 09/02/23.
//

import UIKit

class ViewController: UIViewController {

    //Make an app for present alert with two text field and two action now get both value from text field through button click.
    
    
    @IBOutlet weak var txtone: UITextField!
    
    @IBOutlet weak var txttwo: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSubmit(_ sender: Any) {
        // Create Alert
        var dialogMessage = UIAlertController(title: txtone.text, message: txttwo.text, preferredStyle: .alert)

        // Create OK button with action handler
        let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            print("Ok button tapped")
        })

        // Create Cancel button with action handlder
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) -> Void in
            print("Cancel button tapped")
        }

        //Add OK and Cancel button to an Alert object
        dialogMessage.addAction(ok)
        dialogMessage.addAction(cancel)

        // Present alert message to user
        self.present(dialogMessage, animated: true, completion: nil)
    }
    
}

