//
//  ViewController.swift
//  D_M678_Ass_1_iOs
//
//  Created by Dharmesh N. Agravat on 20/04/23.
//


// display content of rest countries api into tableView.
// https://restcountries.com/v3.1/all


import UIKit

class ViewController: UIViewController {
   
    
    var countryNameList : [CountryCapitalList] = []
    
    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tblView.delegate = self
        tblView.dataSource = self
        fetchingApi()
    }
    
    func fetchingApi() {
        if let url = URL(string: "https://restcountries.com/v3.1/all") {
            let request = URLRequest(url: url)
            URLSession.shared.dataTask(with: request) { data, response, error in
                if let data {
                    let responsee = try? JSONDecoder().decode([CountryCapitalList].self, from: data)
                    self.countryNameList = responsee ?? []
                    print(self.countryNameList)
                    DispatchQueue.main.async {
                        self.tblView.reloadData()
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
        return countryNameList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as? TableViewCell
        cell?.lblCountryname.text = countryNameList[indexPath.row].name?.official
        cell?.lblCapitalOfCountry.text = countryNameList[indexPath.row].capital?.first
        return cell ?? UITableViewCell()
    }
    
    
}
