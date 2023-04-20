//
//  ViewController.swift
//  D_M5_Ass11_iOs
//
//  Created by Dharmesh N. Agravat on 17/02/23.
//

//Make an app to create dynamic toolbar and bar button item.

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func coloursAction(_ sender: Any) {
        view.backgroundColor = .systemOrange
    }
    @IBAction func favouriteAction(_ sender: Any) {
        view.backgroundColor = .purple
        // Create new Alert
        var dialogMessage = UIAlertController(title: "Hey Buddy", message: "We are Admiring you...🥰", preferredStyle: .alert)
        
        // Create OK button with action handler
        let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            print("Ok button tapped")
         })
        
        //Add OK button to a dialog message
        dialogMessage.addAction(ok)

        // Present Alert to
        self.present(dialogMessage, animated: true, completion: nil)
    }
    
    @IBAction func shareAction(_ sender: Any) {
        view.backgroundColor = .lightGray
        // text to share
               let text = "We are happy and hell Yes, You are the reason!🤩"
               
               // set up activity view controller
               let textToShare = [ text ]
               let activityViewController = UIActivityViewController(activityItems: textToShare, applicationActivities: nil)
               activityViewController.popoverPresentationController?.sourceView = self.view // so that iPads won't crash
               
               // exclude some activity types from the list (optional)
               activityViewController.excludedActivityTypes = [ UIActivity.ActivityType.airDrop, UIActivity.ActivityType.postToFacebook ]
               
               // present the view controller
               self.present(activityViewController, animated: true, completion: nil)
    }
}

