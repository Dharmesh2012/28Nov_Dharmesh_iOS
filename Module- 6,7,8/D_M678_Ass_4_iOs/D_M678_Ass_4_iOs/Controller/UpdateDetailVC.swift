//
//  UpdateDetailVC.swift
//  D_M678_Ass_4_iOs
//
//  Created by Dharmesh N. Agravat on 20/04/23.
//

import UIKit


class UpdateDetailVC: UIViewController {
    @IBOutlet weak var txtFieldUpdateName: UITextField!
    @IBOutlet weak var txtFieldUpdateCity: UITextField!
    
    var userObj: UserModel?
    
    var updateClosure: ((UserModel?)->Void)?
    var deleteClosure: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showData()
    }
    
    @IBAction func btnUpdate(_ sender: Any) {
        let name = txtFieldUpdateName.text?.removeWhiteSpace ?? ""
        let city = txtFieldUpdateCity.text?.removeWhiteSpace ?? ""
        
        if name == "" || city == "" {
            showAlert(title: "Required", message: "Please enter name & city")
        } else {
            let param = "labelName='\(name)',labelCity='\(city)' where labelName='\(userObj?.name ?? "")'"
            print("PARAM: \(param)")
            
            let dml = DMLOperations()
            
            if dml.performQuary(queryType: .update(tableName: tableName), param: param) {
                showAlert(title: "Success", message: "Data updated successfully") {
                    self.userObj?.name = name
                    self.userObj?.city = city
                    self.updateClosure?(self.userObj)
                    self.navigationController?.popViewController(animated: true)
                }
            } else {
                showAlert(title: "Failed", message: "Opps, Something went wrong!")
            }
        }
    }
    
    @IBAction func btnDelete(_ sender: Any) {
        let dml = DMLOperations()
        let param = "labelName='\(userObj?.name ?? "")'"
        if dml.performQuary(queryType: .delete(tableName: tableName), param: param) {
            showAlert(title: "Success", message: "Data deleted successfully") {
                self.deleteClosure?()
                self.navigationController?.popViewController(animated: true)
            }
        } else {
            showAlert(title: "Failed", message: "Opps, Something went wrong!")
        }
    }
    
    func showData(){
        txtFieldUpdateName.text = userObj?.name
        txtFieldUpdateCity.text = userObj?.city
    }
}
