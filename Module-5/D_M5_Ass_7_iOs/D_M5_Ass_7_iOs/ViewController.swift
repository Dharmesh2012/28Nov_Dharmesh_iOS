//
//  ViewController.swift
//  D_M5_Ass_7_iOs
//
//  Created by Dharmesh N. Agravat on 17/02/23.
//

//Make an app to show multiple button in cell when swap uitableviewcell.


import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mytbl: UITableView!
    
    var getValue = UITextField()
    
    var arOfMovieImages : [String] = ["dp", "dkr", "ss", "jw", "ad", "ms", "fg", "ft"]
    var arrOfMovieNames : [String] = ["DeadPool", "Dark Night Rises", "Suicide Squad", "John Wick", "A Drift", "Mavericks", "Fair Game", "Fairy Tale"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrOfMovieNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        cell?.imgView.image = UIImage(named: arOfMovieImages[indexPath.row])
        cell?.imgView.contentMode = .scaleAspectFill
        cell?.lblMovieName.text = arrOfMovieNames[indexPath.row]
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
    {
        return nil
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (action, view, handler) in
            self.arrOfMovieNames.remove(at: indexPath.row)
            self.arOfMovieImages.remove(at: indexPath.row)
            self.mytbl.reloadData()
            }
            deleteAction.backgroundColor = .red
        
        let editAction = UIContextualAction(style: .normal, title: "Edit Name") { (action, view, handler) in
            // Create new Alert
            var dialogMessage = UIAlertController(title: "Confirm", message: "Are you sure you want to Edit this?", preferredStyle: .alert)
            
            dialogMessage.addTextField { alertTextField in
                alertTextField.placeholder = "Type Here"
                alertTextField.text = self.arrOfMovieNames[indexPath.row]
                //Copy alertTextField in local variable to use in current block of code
                self.getValue = alertTextField
            }
            
            // Create OK button with action handler
            let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
                print("Ok button tapped")
                self.arrOfMovieNames[indexPath.row] = self.getValue.text ?? ""
                tableView.reloadData()
             })
            
            //Add OK button to a dialog message
            dialogMessage.addAction(ok)
            // Present Alert to
            self.present(dialogMessage, animated: true, completion: nil)
        }
        editAction.backgroundColor = UIColor.gray
            let configuration = UISwipeActionsConfiguration(actions: [deleteAction, editAction])
            configuration.performsFirstActionWithFullSwipe = false
            return configuration
    }
    
}
