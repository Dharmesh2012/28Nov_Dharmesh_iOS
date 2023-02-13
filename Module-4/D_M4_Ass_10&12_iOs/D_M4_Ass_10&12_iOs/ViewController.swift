//
//  ViewController.swift
//  D_M4_Ass_10&12_iOs
//
//  Created by Dharmesh N. Agravat on 09/02/23.
//

import UIKit

class ViewController: UIViewController {

// 10, Make an app to take a date from datepicker and display in label.
// 12, Make an app to take date and time from datepicker and show in label.
    
    var datePic = UIDatePicker()
    @IBOutlet weak var txtFieldDate: UITextField!
    @IBOutlet weak var lblForShow: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        temp()
        // Do any additional setup after loading the view.
    }

    func temp() {
        txtFieldDate.inputView = datePic
        datePic.preferredDatePickerStyle = .compact
        datePic.datePickerMode = .dateAndTime
        datePic.addTarget(self, action: #selector(ViewController.selectDate), for: .valueChanged)
        }
   @objc func selectDate() {
       let dt = datePic.date
       let dtfrm = DateFormatter()
       dtfrm.dateStyle = .long
      //dtfrm.dateFormat = "dd-MM-yyyy h:mm a"
       
       //dtfrm.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
     //  dtfrm.dateFormat = "E, d MMM yyyy HH:mm:ss Z"
       dtfrm.dateFormat = "dd-MMM-yyyy EEEE HH:mm"
       
       lblForShow.text = dtfrm.string(from: dt)
   
       view.endEditing(true)
    }
}

