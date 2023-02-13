//
//  ViewController.swift
//  D_M4_Ass_15_iOs
//
//  Created by Dharmesh N. Agravat on 09/02/23.
//

import UIKit

class ViewController: UIViewController {

    //Make an app to take country, state picker when user select country then respected state will be shown(take a single pickerview) to navigate from one page to another page using segue to perform navigation using four page(using push, pop Methodology.
    
    var countryPicker = UIPickerView()
    var arrOfCountry = ["India", "Bangladesh", "Japan", "America", "Spain"]
    
    var arrOfIndia = [" Gujarat", " Himachal Pradesh", " Rajasthan", " Punjab", " Uttar Pradesh"]
    var arrOfBangladesh = [" Barisal Division", " Chittagong Division", " Dhaka Division", " Khulna Division", " Rangpur"]
    var arrOfJapan = [" Hokkaido", " Iwate", " Fukushima", " Nagano", " Niigata"]
    var arrOfAmerica = [" Alabama", " Alaska", " California", " Georgia", " Washington"]
    var arrOfSpain = [" Álava", " Almería", " Castellón", " Lugo", " Sevilla"]
    @IBOutlet weak var txtFieldForCountry: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        temp()
    }
    func temp() {
        countryPicker.delegate = self
        countryPicker.dataSource = self
        txtFieldForCountry.inputView = countryPicker
    }

}

extension ViewController : UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrOfCountry.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        txtFieldForCountry.text = arrOfCountry[row]
        return arrOfCountry[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if txtFieldForCountry.text == "India" {
            let nav = storyboard?.instantiateViewController(withIdentifier: "seVC") as? SecondViewController
            navigationController?.pushViewController(nav ?? UIViewController(), animated: true)
            nav?.getState = arrOfIndia
        } else if txtFieldForCountry.text == "Bangladesh" {
            let nav = storyboard?.instantiateViewController(withIdentifier: "seVC") as? SecondViewController
            navigationController?.pushViewController(nav ?? UIViewController(), animated: true)
            nav?.getState = arrOfBangladesh
        } else if txtFieldForCountry.text == "Japan" {
            let nav = storyboard?.instantiateViewController(withIdentifier: "seVC") as? SecondViewController
            navigationController?.pushViewController(nav ?? UIViewController(), animated: true)
            nav?.getState = arrOfJapan
        } else if txtFieldForCountry.text == "America" {
            let nav = storyboard?.instantiateViewController(withIdentifier: "seVC") as? SecondViewController
            navigationController?.pushViewController(nav ?? UIViewController(), animated: true)
            nav?.getState = arrOfAmerica
        } else {
            let nav = storyboard?.instantiateViewController(withIdentifier: "seVC") as? SecondViewController
            navigationController?.pushViewController(nav ?? UIViewController(), animated: true)
            nav?.getState = arrOfSpain
        }
            
            view.endEditing(true)
        
    }
    
}
