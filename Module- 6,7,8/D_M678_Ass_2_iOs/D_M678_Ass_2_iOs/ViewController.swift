//
//  ViewController.swift
//  D_M678_Ass_2_iOs
//
//  Created by Dharmesh N. Agravat on 20/04/23.
//


//using get method display data on table
// https://jsonplaceholder.typicode.com/comments?postID=1
//and take post id from user textField.

import UIKit

class ViewController: UIViewController {
    var getApiData : [Model_Class] = []
    
    @IBOutlet weak var myTblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTblView.delegate = self
        myTblView.dataSource = self
        fetchApi()
    }
    func fetchApi() {
        if let url = URL(string: "https://jsonplaceholder.typicode.com/comments?postID=1") {
            let request = URLRequest(url: url)
            URLSession.shared.dataTask(with: request) { data, response, error in
                if let data {
                    let response2 = try? JSONDecoder().decode([Model_Class].self, from: data)
                    self.getApiData = response2 ?? []
                    print(self.getApiData)
                    DispatchQueue.main.async {
                        self.myTblView.reloadData()
                    }
                } else {
                    print(error?.localizedDescription ?? "")
                }
            }.resume()
        }
        
    }
}
extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return getApiData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as? TableViewCell
        cell?.lblName.text = getApiData[indexPath.row].name
        cell?.lblEAmail.text = getApiData[indexPath.row].email
        cell?.lblBody.text = getApiData[indexPath.row].body
        return cell ?? UITableViewCell()
    }
    
    
}
