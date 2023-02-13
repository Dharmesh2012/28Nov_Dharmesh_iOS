//
//  ViewController.swift
//  D_M4_Ass_14_iOs
//
//  Created by Dharmesh N. Agravat on 09/02/23.
//

import UIKit

class ViewController: UIViewController {

    //Make an app to compare a current date to selected date from datepicker.
    @IBOutlet weak var txtField: UITextField!
    @IBOutlet weak var lblForCurrentDate: UILabel!
    @IBOutlet weak var lblForSelectedDate: UILabel!
    @IBOutlet weak var lblForResult: UILabel!
    
    var datePicker = UIDatePicker()
    let curDate = Date()
    var Selecteddt = Date()
    override func viewDidLoad() {
        super.viewDidLoad()
      
        let dtfrm2 = DateFormatter()
        dtfrm2.dateStyle = .long
        dtfrm2.dateFormat = "dd-MMM-yyyy"
        let dateTimeStr = dtfrm2.string(from: curDate)
        lblForCurrentDate.text = "Current Date is : \(dateTimeStr)"
      temp()
    }

    func temp() {
        txtField.inputView = datePicker
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .compact
        datePicker.addTarget(self, action: #selector(ViewController.selectDatee), for: .valueChanged)
        
     
    }
    @objc func selectDatee() {
        Selecteddt = datePicker.date
        let dtfm = DateFormatter()
        dtfm.dateStyle = .long
        dtfm.dateFormat = "dd-MMM-yyyy"
        lblForSelectedDate.text = "Selected Date is: \(dtfm.string(from: Selecteddt))"
        view.endEditing(true)
    }

    @IBAction func btnCompare(_ sender: Any) {
        if lblForCurrentDate.text == lblForSelectedDate.text {
            lblForResult.text = "Both Date are same"
            print(Selecteddt)
           
        } else  {
            lblForResult.text = "Current and Selected Date are NOT SAME"
            
            print(Selecteddt)
        }
    }
  
}

