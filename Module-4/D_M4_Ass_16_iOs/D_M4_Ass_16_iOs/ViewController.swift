//
//  ViewController.swift
//  D_M4_Ass_16_iOs
//
//  Created by Dharmesh N. Agravat on 09/02/23.
//

import UIKit

class ViewController: UIViewController {

    //Make an app to share a text with UIActivity View Controls.
    @IBOutlet weak var txtField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func btnShare(_ sender: Any) {
        let activity = UIActivityViewController(activityItems: [txtField.text ?? ""], applicationActivities: nil)
        present(activity, animated: true, completion: nil)
    }
    
}

