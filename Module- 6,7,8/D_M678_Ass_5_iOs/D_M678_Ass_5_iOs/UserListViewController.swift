//
//  UserListViewController.swift
//  D_M678_Ass_5_iOs
//
//  Created by Dharmesh N. Agravat on 28/04/23.
//

import UIKit

class UserListViewController: UIViewController {
    var users : [UserEntity] = []
    var manager = DatabaseManager()
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.register(UINib(nibName: "UserCell", bundle: nil), forCellReuseIdentifier: "UserCell")
    }
    override func viewWillAppear(_ animated: Bool) {
        users = manager.fetchUser()
        tblView.reloadData()
    }
    

    @IBAction func addUserButton(_ sender: UIBarButtonItem) {
        addUpdateUserNavigation()
    }
    func addUpdateUserNavigation(user : UserEntity? = nil) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController") as? ViewController
        vc?.user = user
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }

}

extension UserListViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let user = users[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell") as? UserCell
//        cell?.fullNamelbl.text = (users[indexPath.row].firstName ?? "") + (users[indexPath.row].lastName ?? "")
//        cell?.emailLbl.text = users[indexPath.row].email
        cell?.user = user
        return cell ?? UITableViewCell()
    }
    
    
}

extension UserListViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let update = UIContextualAction(style: .normal, title: "Update") { _, _, _ in
            self.addUpdateUserNavigation(user: self.users[indexPath.row])
        }
        update.backgroundColor = .systemIndigo
       
        let delete = UIContextualAction(style: .destructive, title: "Delete") { _, _, _ in
            self.manager.deleteUser(userEntity: self.users[indexPath.row]) //first delete from core data
            self.users.remove(at: indexPath.row) // then delete from arraay
            self.tblView.reloadData() //then reload the table
        }
        return UISwipeActionsConfiguration(actions: [delete, update])
    }
}
