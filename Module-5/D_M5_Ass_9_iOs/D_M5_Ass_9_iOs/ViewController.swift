//
//  ViewController.swift
//  D_M5_Ass_9_iOs
//
//  Created by Dharmesh N. Agravat on 17/02/23.
//

//Make an app application to display collection view inside cell. Make an app to take one table view and set number of different styles of cell in which put collection view and scroll image in horizontal in multiple uitableviewcell.

import UIKit

class ViewController: UIViewController {

    var mainDictionary : [String : [(String,String)]] = ["Indian Army" : [("arm1", "1"), ("arm2","2"), ("arm3","3"), ("arm4","4"), ("arm5","5"), ("arm6","6")],
                                                         "Indian Airforce" : [("af1","1"), ("af2", "2"), ("af3","3"), ("af4","4"), ("af5","5"), ("af6","6")],
                                                         "Indian Navy" : [("in1","1"), ("in2","2"), ("in3","3"), ("in4","4"), ("in5","5"), ("in6","6"), ("in7","7")],
                                                         "Enforcement Department" : [("ed1","1"), ("ed2","2"), ("ed3","3")],
                                                         "CBI" : [("cbi1","1"), ("cbi2", "2")],
                                                         "Gujarat Police" : [("gp1","1"), ("gp2","2"), ("gp3","3"), ("gp5","5"), ("gp6","6")],
                                                         "Para SF" : [("psf1","1"), ("psf2","2"), ("psf3","3"), ("psf4","4")],
                                                         "RAW" : [("r1", "1"), ("r2", "2"), ("r3", "3"), ("r4", "4")]
    ]
    var arrOfMainTitle = ["Indian Army", "Indian Airforce", "Indian Navy", "Enforcement Department", "CBI", "Gujarat Police", "Para SF", "RAW"]
    
    @IBOutlet weak var tblViewOutlet: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrOfMainTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tblCell") as? TableViewCell
        cell?.arrOfImageAndLabel = mainDictionary[arrOfMainTitle[indexPath.row]] ?? []
        cell?.lblOfTableView.text = arrOfMainTitle[indexPath.row]
        
        return cell ?? UITableViewCell()
    }
    
    
}
