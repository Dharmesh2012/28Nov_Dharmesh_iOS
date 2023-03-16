//
//  TableViewCell.swift
//  D_M5_Ass1to5_iOs
//
//  Created by Dharmesh N. Agravat on 18/02/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    var tempClosure : (() -> ())?
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblForMovieName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func btnDelete(_ sender: Any) {
        tempClosure?()
    }
    
}
