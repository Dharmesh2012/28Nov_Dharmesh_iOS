//
//  AlertActionn.swift
//  D_M5_Ass_17&18_iOs
//
//  Created by Dharmesh N. Agravat on 18/04/23.
//

import UIKit

class AlertBox : NSObject {
    func showAlert(vc : UIViewController, title : String, message : String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "ok", style: .default, handler:  nil)
        alert.addAction(okAction)
        vc.present(alert, animated: true, completion: nil)
    }
}
