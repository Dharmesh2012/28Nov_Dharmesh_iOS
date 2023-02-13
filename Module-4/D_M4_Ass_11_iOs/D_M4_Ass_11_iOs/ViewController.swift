//
//  ViewController.swift
//  D_M4_Ass_11_iOs
//
//  Created by Dharmesh N. Agravat on 09/02/23.
//

import UIKit

class ViewController: UIViewController {

    // Make an app to display list of courses in pickerview.
    
    @IBOutlet weak var txtFieldForPicker: UITextField?
    
    var pickerCourse = UIPickerView()
    var arrOfCourse = ["Swift", "Android", "Java", "Cobol", "Python", "AI", "Web Designing", "Flutter"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       temp()
        
    }
    
    func temp() {
        pickerCourse.delegate = self
        pickerCourse.dataSource = self
        txtFieldForPicker?.inputView = pickerCourse
    }

}

extension ViewController : UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
     
        return arrOfCourse.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        txtFieldForPicker?.text = arrOfCourse[row]
        return arrOfCourse[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        view.endEditing(true)
    }
    
}
