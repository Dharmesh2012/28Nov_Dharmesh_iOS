//
//  SecondViewController.swift
//  D_M5_Ass16_iOss
//
//  Created by Dharmesh N. Agravat on 20/04/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var txxtEmail: UITextField!
    
    @IBOutlet weak var txtMobile: UITextField!
    
    @IBOutlet weak var txtUsername: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func btnSubmit(_ sender: Any) {
        
        let username = txtUsername?.text
             let password = txtPassword?.text
        let fullName = txtName.text
        let email = txxtEmail.text
        let mobile = txtMobile.text
             let obj = UserModel(user: username, password: password, fullname: fullName, email: email, mobile: mobile)
             
             if let obj = getUserdata().first(where: {$0.user == obj.user && $0.password == obj.password}){
                 // show alert -> user already exist
                 utilityFunction().showSimpleAlert(vc: self, title: "Oops", message: "User already exist")
             } else {
                 saveDataInPlistFile(obj: obj) {
                     // step: 1 -> save this user as login user
                     // step: 2 -> navigate to home screen
                     DispatchQueue.main.async {
                         UserDefaults.standard.setValue(true, forKey: "cuser")
                         appDel?.goToHome()
                     }
                   
                 }
             }
    }
}
