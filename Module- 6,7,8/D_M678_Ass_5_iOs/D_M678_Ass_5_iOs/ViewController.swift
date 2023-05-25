//
//  ViewController.swift
//  D_M678_Ass_5_iOs
//
//  Created by Dharmesh N. Agravat on 28/04/23.
//

// make an app for core data and perform CRUD Operations.
import UIKit

class ViewController: UIViewController {
    
    let manager = DatabaseManager()
    var user : UserEntity?
    @IBOutlet weak var txtFirst: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var btnSubmitOutlet: UIButton!
    
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userDetailConfiguration()
        
    }
    
    func userDetailConfiguration() {
        if let user {
            navigationItem.title = "Update User"
            btnSubmitOutlet.setTitle("Update", for: .normal)
            txtFirst.text = user.firstName
            txtLastName.text = user.lastName
            txtEmail.text = user.email
            txtPassword.text = user.password
        } else {
            navigationItem.title = "Add User"
            btnSubmitOutlet.setTitle("Register", for: .normal)
        }
    }

    @IBAction func btnSubmit(_ sender: Any) {
        guard let firstName = txtFirst.text, !firstName.isEmpty else {
            openAlert(message: "Please Enter your First Name")
            return
        }
        guard let lastName = txtLastName.text, !lastName.isEmpty else {
            openAlert(message: "Please Enter your Last Name")
            return
        }
        guard let email = txtEmail.text, !email.isEmpty else {
            openAlert(message: "Please Enter your Email")
            return
        }
        guard let password = txtPassword.text, !password.isEmpty else {
            openAlert(message: "Please Enter your Password")
            return
        }
        
        let newUser = UserModel(firstName: firstName, lastName: lastName, email: email, password: password)
        if let user {
            //update
            manager.updateUser(user: newUser, userEntity: user)
        } else {
            //add
            manager.addUser(user: newUser)
        }
      
       
        
        showAlert()
    }
    func showAlert() {
        let alert = UIAlertController(title: "", message: "Yeah Data Saved Successfully", preferredStyle: .alert)
        let okk = UIAlertAction(title: "Done", style: .default) { action in
            self.navigationController?.popViewController(animated: true)
        }
        alert.addAction(okk)
        present(alert, animated: true)
    }
}

extension ViewController {
    func openAlert(message : String) {
        let alertController = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Okay", style: .default)
        alertController.addAction(ok)
        present(alertController, animated: true)
    }
}
