//
//  ViewController.swift
//  D_M5_Ass1to5_iOs
//
//  Created by Dharmesh N. Agravat on 17/02/23.
//


//Make an app to display simple array item in tableview
// Make an app to display data in section wise.
// Make an app to set accessory in tableview cell.
// Make an app display image in cell.
// Make an app to set delete button in each cell.

import UIKit

class ViewController: UIViewController {

    var arrOfImg = ["1", "2", "3", "4", "5"]
    var arrOfImg2 = ["6", "7", "8", "9", "10", "11"]
    var arrOfMovieName = ["Dark Knight Rises", "Suicide Squad", "John Wick", "Boom", "DeadPool"]
    var arrOfMoviename2 = ["Thor", "A Drift", "Fair Game", "The Impossible", "Mavericks", "Fairy Tale"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "SECTION A"
        } else {
            return "SECTION B"
        }
      
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return arrOfMovieName.count
            
        } else {
            return arrOfMoviename2.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell
        if indexPath.section == 0 {
            cell?.imgView.image = UIImage(named: arrOfImg[indexPath.row])
            cell?.imgView.contentMode = .scaleAspectFill
            cell?.imgView.layer.cornerRadius = 5
            cell?.imgView.layer.borderWidth = 5
            cell?.imgView.layer.borderColor = UIColor.systemBlue.cgColor
            cell?.imgView.clipsToBounds = true
            
            cell?.lblForMovieName.text = arrOfMovieName[indexPath.row]
        }
       
        else {
            cell?.imgView.image = UIImage(named: arrOfImg2[indexPath.row])
            cell?.imgView.contentMode = .scaleAspectFill
            cell?.imgView.layer.cornerRadius = 5
            cell?.imgView.layer.borderWidth = 5
            cell?.imgView.layer.borderColor = UIColor.systemBlue.cgColor
            cell?.imgView.clipsToBounds = true
            
            cell?.lblForMovieName.text = arrOfMoviename2[indexPath.row]
        }
        
      
        
        cell?.tempClosure = {
            if indexPath.section == 0 {
                self.arrOfImg.remove(at: indexPath.row)
                self.arrOfMovieName.remove(at: indexPath.row)
            } else {
                self.arrOfImg2.remove(at: indexPath.row)
                self.arrOfMoviename2.remove(at: indexPath.row)
               }
            print("delete btn pressed")
            tableView.reloadData()
        }
        return cell ?? UITableViewCell()
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            if indexPath.section == 0 {
                arrOfImg.remove(at: indexPath.row)
                arrOfMovieName.remove(at: indexPath.row)
            } else {
                arrOfImg2.remove(at: indexPath.row)
                arrOfMoviename2.remove(at: indexPath.row)
            }
        }
        tableView.reloadData()
    }
    
    
}
