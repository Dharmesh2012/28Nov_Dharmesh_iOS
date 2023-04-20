//
//  ViewController.swift
//  D_M5_Ass_14_iOs
//
//  Created by Dharmesh N. Agravat on 17/02/23.
//

//Make an app to get data from plist and display in tableview.

import UIKit

class ViewController: UIViewController {

    var arrOfStates : [String] = []
    var arrOfCapitals : [String] = []
    
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        
        let path = Bundle.main.path(forResource: "MyPlist", ofType: "plist")
        let dict = NSDictionary.init(contentsOfFile: path ?? "")
        
        arrOfStates = dict?.object(forKey: "States") as? [String] ?? [""]
        arrOfCapitals = dict?.object(forKey: "Capitals") as? [String] ?? [""]
    }


}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrOfStates.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? TableViewCell
        cell?.lblStates.text = arrOfStates[indexPath.row]
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nav = storyboard?.instantiateViewController(withIdentifier: "seVC") as? SecondViewController
        nav?.getCapitals = arrOfCapitals[indexPath.row]
        navigationController?.pushViewController(nav ?? UIViewController(), animated: true)
    }
}
