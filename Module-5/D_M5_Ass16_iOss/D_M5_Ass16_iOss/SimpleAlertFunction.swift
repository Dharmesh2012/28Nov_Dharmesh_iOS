//
//  SimpleAlertFunction.swift
//  D_M5_Ass16_iOss
//
//  Created by Dharmesh N. Agravat on 20/04/23.
//


import UIKit

class utilityFunction : NSObject {
    func showSimpleAlert(vc : UIViewController, title : String, message : String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "ok", style: .default, handler: nil)
        alert.addAction(okAction)
        vc.present(alert, animated: true, completion: nil)
    }
}
