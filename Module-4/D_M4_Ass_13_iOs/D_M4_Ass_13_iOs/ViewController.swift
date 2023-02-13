//
//  ViewController.swift
//  D_M4_Ass_13_iOs
//
//  Created by Dharmesh N. Agravat on 09/02/23.
//

import UIKit

class ViewController: UIViewController {

    //Make an app to display color name in pickerview, select a color then changed view background color as per selection.
    
    var colorPicker = UIPickerView()
    @IBOutlet weak var lblColors: UILabel!
    @IBOutlet weak var txtFieldColors: UITextField!
    
    var arrOfColors = ["Red", "Green", "Blue", "Yellow", "Grey", "Black", "White"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            temp()
    }
    func temp() {
        txtFieldColors.inputView = colorPicker
        colorPicker.delegate = self
        colorPicker.dataSource = self
    }

}

extension ViewController : UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrOfColors.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        txtFieldColors.text = arrOfColors[row]
        return arrOfColors[row]
    }
  func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
      
      if txtFieldColors.text == "Red" {
          view.backgroundColor = UIColor.red
      } else if txtFieldColors.text == "Green" {
            view.backgroundColor = UIColor.green
        } else if txtFieldColors.text == "Blue" {
            view.backgroundColor = UIColor.blue
        } else if txtFieldColors.text == "Yellow" {
            view.backgroundColor = UIColor.yellow
        } else if txtFieldColors.text == "Gray" {
            view.backgroundColor = UIColor.gray
        } else if txtFieldColors.text == "Black" {
            view.backgroundColor = UIColor.black
        } else if txtFieldColors.text == "White" {
            view.backgroundColor = UIColor.white
        }
        
        view.endEditing(true)
    }
    
}
