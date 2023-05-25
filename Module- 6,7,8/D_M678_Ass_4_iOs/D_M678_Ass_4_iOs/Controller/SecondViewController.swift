//
//  SecondViewController.swift
//  D_M678_Ass_4_iOs
//
//  Created by Dharmesh N. Agravat on 20/04/23.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var myTableView: UITableView!
    
   
    var userList: [UserModel] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        getData()
    }
}
// Get All data
extension SecondViewController {
    func getData(){
        let dml = DMLOperations()
        userList = dml.showalldata(queryType: .get(tableName: tableName))
        myTableView.reloadData()
    }
}

extension SecondViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        cell?.userObj = userList[indexPath.row]
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "UpdateDetailVC") as? UpdateDetailVC ?? UpdateDetailVC()
        vc.userObj = userList[indexPath.row]
        
        vc.updateClosure = { userObj in
            if let userObj {
                self.userList[indexPath.row] = userObj
                tableView.reloadData()
            }
        }
        
        vc.deleteClosure = {
            self.userList.remove(at: indexPath.row)
            tableView.reloadData()
        }
        navigationController?.pushViewController(vc, animated: true)
    }
}
