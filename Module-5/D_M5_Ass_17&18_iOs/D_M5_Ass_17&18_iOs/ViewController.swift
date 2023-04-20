//
//  ViewController.swift
//  D_M5_Ass_17&18_iOs
//
//  Created by Dharmesh N. Agravat on 17/02/23.
//

//Make an app to create registration form and perform validation using textfield validator.
//Make an app to perform mobile number and email validation in viewcontroller

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtFullName: UITextField!
    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtReEnterPassword: UITextField!
    
    @IBOutlet weak var txtMobile: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnSubmit(_ sender: Any) {
        if txtEmail.text == "" || txtMobile.text == "" || txtPassword.text == "" || txtFullName.text == "" || txtUserName.text == "" || txtReEnterPassword.text == "" {
            AlertBox().showAlert(vc: self, title: "Oops", message: "All Text Field should not be empty")
        }
        
        if (txtEmail.text?.isValidEmail) ?? Bool() {
            print("valid email")
        } else {
            AlertBox().showAlert(vc: self, title: "Oops", message: "Email Format is Invalid")
        }
        
        if (txtPassword.text?.ispasswordIsValid) ?? Bool() {
            print("Valid Password")
        } else {
            AlertBox().showAlert(vc: self, title: "Oops", message: "Password Format is Invalid")
        }
        
        if (txtMobile.text?.isPhonNumber) ?? Bool() {
            print("Valid Mobile Number")
        } else {
            AlertBox().showAlert(vc: self, title: "Oops", message: "Mobile Number Format is Invalid")
        }
        
        if txtPassword.text != txtReEnterPassword.text {
            AlertBox().showAlert(vc: self, title: "Oops", message: "Re Enter Password is not same as Password.")
        }
        if txtEmail.text?.isValidEmail == true && txtPassword.text?.ispasswordIsValid == true && txtMobile.text?.isPhonNumber == true {
            let nav = storyboard?.instantiateViewController(withIdentifier: "seVC") as? SecondViewController
            navigationController?.pushViewController(nav ?? UIViewController(), animated: true)
        }
    }
}

extension String {
    var isPhonNumber : Bool {
        do {
            let detector = try NSDataDetector(types: NSTextCheckingResult.CheckingType.phoneNumber.rawValue)
            let matches = detector.matches(in: self, options: [], range: NSMakeRange(0, self.count))
            if let res = matches.first {
                return res.resultType == .phoneNumber && self.count == 10
            } else {
                return false
            }
            
        } catch {
            return false
        }
    }
    var ispasswordIsValid : Bool {
//        let passwordTest = NSPredicate(format:"^(?=.*[A-Za-z])(?=.*\\d)(?=.*[$@$!%*#?&])[A-Za-z\\d$@$!%*#?&]{8,}$")
//        return passwordTest.evaluate (with: self)
        
        let passwordTest = NSPredicate(format: "SELF MATCHES %@ ", "^(?=.*[a-z])(?=.*[$@$#!%*?&]).{6,}$")

        return passwordTest.evaluate(with: self) // True
      
    }
    var isValidEmail : Bool {
        
//        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
//        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
//        return emailTest.evaluate(with: self)
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

            let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
            return emailPred.evaluate(with: self)
        
    }
}
