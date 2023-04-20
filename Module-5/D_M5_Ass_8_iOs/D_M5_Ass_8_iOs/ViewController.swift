//
//  ViewController.swift
//  D_M5_Ass_8_iOs
//
//  Created by Dharmesh N. Agravat on 19/03/23.
//

import UIKit

class ViewController: UIViewController {
    var dictionaryMain : [ImageAndDetails] = [.init(label: "Banner", img: ["B1","B2","B3","B4","B5","B6"]),  .init(label: "Category", img: ["C1","C2","C3","C4","C5","C6","C7"], title: ["Dollar", "Credit", "Group by", "Coins", "Coupen", "Upper", "Rupee"]), .init(label: "Offer", img: ["O1", "O2", "O3", "O4", "O5", "O6"], title: ["Masoor Dal", "Tablets", "Bag", "Buds", "Mobile", "TV"]), .init(label: "Products", img: ["P1", "P2", "P2", "P3", "P4", "P5", "P7"], title: ["Key Chain", "Decoration", "Posters", "Lighting", "Dining", "Sofa Set", "Sofa"])]
    
    @IBOutlet weak var lblBrandMall: UILabel!
    @IBOutlet weak var myTbl: UITableView!
    
    @IBOutlet weak var `switch`: UISwitch!
    @IBOutlet weak var txtFieldSearch: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTbl.register(UINib(nibName: TableViewCell.id, bundle: nil), forCellReuseIdentifier: TableViewCell.id)
        myTbl.estimatedRowHeight = UITableView.automaticDimension
        myTbl.sectionHeaderTopPadding = 0.0
    }


}

class ImageAndDetails {
    var label : String
    var img : [String]
    var title: [String] = []
    
    init(label: String, img: [String], title: [String] = []) {
        self.label = label
        self.img = img
        self.title = title
    }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dictionaryMain.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.id, for: indexPath) as? TableViewCell
        cell?.detailsObject = dictionaryMain[indexPath.row]
        return cell ?? UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if dictionaryMain[indexPath.row].label == "Banner" {
            return 200 + 80 + 20
        } else if dictionaryMain[indexPath.row].label == "Category" {
            return 80 + 30 + 20
        } else if dictionaryMain[indexPath.row].label == "Offer" {
            return 100 + 50 + 20
        } else if dictionaryMain[indexPath.row].label == "Products" {
            return 120 + 50 + 20
        } else {
            return 100
        }
    }
}
