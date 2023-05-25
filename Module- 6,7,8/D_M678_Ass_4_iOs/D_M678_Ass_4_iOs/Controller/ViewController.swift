//
//  ViewController.swift
//  D_M678_Ass_4_iOs
//
//  Created by Dharmesh N. Agravat on 20/04/23.
//

//make an app for crud operation via sqlite.

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtFieldName: UITextField!
    @IBOutlet weak var txtFieldCity: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSave(_ sender: Any) {
        let name = txtFieldName.text?.removeWhiteSpace ?? ""
        let city = txtFieldCity.text?.removeWhiteSpace ?? ""
        
        if name == "" || city == "" {
            showAlert(title: "Required", message: "Please enter name & city")
        } else {
            let param = "(labelName,labelCity) values('\(name)','\(city)')"
            print("PARAM: \(param)")
            
            let dml = DMLOperations()
            
            if dml.performQuary(queryType: .insert(tableName: tableName), param: param) {
                showAlert(title: "Success", message: "Data added successfully") {
                    self.txtFieldName.text = ""
                    self.txtFieldCity.text = ""
                }
            } else {
                showAlert(title: "Failed", message: "Opps, Something went wrong!")
            }
        }
    }
    
    @IBAction func btnShowAll(_ sender: Any) {
        let dml = DMLOperations()
        
        if dml.showalldata(queryType: .get(tableName: tableName)).count == 0 {
            showAlert(title: "No Data", message: "There is no data found!!")
        } else {
            // navigation
            let vc = storyboard?.instantiateViewController(withIdentifier: "secondVC") as? SecondViewController ?? SecondViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}


extension UIViewController {
    func showAlert(title: String, message: String, action: (()-> Void)? = nil){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .default) { _ in
            action?()
        }
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
}

extension String {
    var removeWhiteSpace: String {
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
    



