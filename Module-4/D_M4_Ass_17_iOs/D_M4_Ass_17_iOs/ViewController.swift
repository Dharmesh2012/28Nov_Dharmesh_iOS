//
//  ViewController.swift
//  D_M4_Ass_17_iOs
//
//  Created by Dharmesh N. Agravat on 09/02/23.
//

import UIKit

class ViewController: UIViewController {

    //Make an app to customize navigation bar with all properties.
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.image = UIImage.init(named: "img1")
        imgView.contentMode = .scaleAspectFill
        
        if let navigationBar = self.navigationController?.navigationBar {
            let firstFrame = CGRect(x: 0, y: 0, width: navigationBar.frame.width/2, height: navigationBar.frame.height)
            let secondFrame = CGRect(x: navigationBar.frame.width/2, y: 0, width: navigationBar.frame.width/2, height: navigationBar.frame.height)

            let firstLabel = UILabel(frame: firstFrame)
            firstLabel.text = " Hey Guest User!"

            let secondLabel = UILabel(frame: secondFrame)
            secondLabel.text = "              Warm Welcome"

            navigationBar.addSubview(firstLabel)
            navigationBar.addSubview(secondLabel)
        }
    }

    @IBAction func btnNext(_ sender: Any) {
        let nav = storyboard?.instantiateViewController(withIdentifier: "seVC") as? SecondViewController
        navigationController?.pushViewController(nav ?? UIViewController(), animated: true)
    }
    
}

