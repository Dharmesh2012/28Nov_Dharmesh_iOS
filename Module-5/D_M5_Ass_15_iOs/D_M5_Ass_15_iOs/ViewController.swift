//
//  ViewController.swift
//  D_M5_Ass_15_iOs
//
//  Created by Dharmesh N. Agravat on 17/02/23.
//

// Make an app to clear all key and value permanently in ios.

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblCity: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       let value1 =  UserDefaults.standard.string(forKey: "name")
        let value2 = UserDefaults.standard.string(forKey: "city")
        
        if value1 != nil && value2 != nil {
            lblName.text = "Hello \(value1 ?? "")"
            lblCity.text = "Your city Name is \(value2 ?? "")"
        }
    }
    
    @IBAction func btnSubmit(_ sender: Any) {
        forBtnSubmit()
    }
    
    @IBAction func btnRemove(_ sender: Any) {
       forBtnRemove()
        }
    
    
    func forBtnSubmit() {
       if txtCity.text != "" || txtName.text != "" {
           UserDefaults.standard.set(txtName.text, forKey: "name")
           UserDefaults.standard.set(txtCity.text, forKey: "city")
           // Create new Alert
           let dialogMessage = UIAlertController(title: "Yes", message: "Datails Stored Successfully", preferredStyle: .alert)
            
            // Create OK button with action handler
            let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
                print("Ok button tapped")
             })
            
            //Add OK button to a dialog message
            dialogMessage.addAction(ok)

            // Present Alert to
            self.present(dialogMessage, animated: true, completion: nil)
        } else {
            // Create new Alert
            let dialogMessage = UIAlertController(title: "Oops", message: "Any textfield should not be empty", preferredStyle: .alert)
            
            // Create OK button with action handler
            let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
                print("Ok button tapped")
             })
            
            //Add OK button to a dialog message
            dialogMessage.addAction(ok)

            // Present Alert to
            self.present(dialogMessage, animated: true, completion: nil)
            
        }
    }
    
    func forBtnRemove() {
        UserDefaults.standard.removeObject(forKey: "name")
        UserDefaults.standard.removeObject(forKey: "city")
        let dialogMessage = UIAlertController(title: "Woah", message: "Datails deleted Successfully", preferredStyle: .alert)
        
        // Create OK button with action handler
        let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            print("Ok button tapped")
         })
        
        //Add OK button to a dialog message
        dialogMessage.addAction(ok)

        // Present Alert to
        self.present(dialogMessage, animated: true, completion: nil)
        lblName.text = "Oops! No Data Here"
        lblCity.text = "Oops! No Data Here"
    }
   
}
